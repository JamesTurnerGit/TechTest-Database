require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the IndexHelper. For example:
#
# describe IndexHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe IndexHelper, type: :helper do
  #let(:@@fakeTable){double(fakeTable, create:nil)}
  describe '#createRecord' do
    it 'passes the right messages along' do
      expect(FakeTable).to receive(:create).with(key: 'chips', value: 'fish')
      createRecord({'chips' => 'fish'})
    end
  end
  describe '#getRecord' do
    it 'Finds the right record' do
      createRecord({'chips' => 'fish'})
      expect(getValue('chips')).to eq('fish')
    end
  end

end
