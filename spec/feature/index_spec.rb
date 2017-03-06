feature "storing data" do
  scenario "user adds and retrieves things from the fakeTable" do
    visit ("/set?key=value")
    visit ("/set?value=key")
    visit ("/set?orphans=managers")
    visit ("/get?key=key")
    expect(page).to have_content("value")
    visit ("/get?key=value")
    expect(page).to have_content("key")
    visit ("/get?key=orphans")
    expect(page).to have_content("managers")
  end
end
