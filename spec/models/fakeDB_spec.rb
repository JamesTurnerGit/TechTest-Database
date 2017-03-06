require_relative '../../app/models/fakeDB.rb'

RSpec.describe FakeDB, type: :model do
  let!(:record_1){{key: 'pineapple', value: 'ham'}}
  let!(:record_2){{key: 'pepperoni', value: 'choritzo'}}

  let(:fakeDB){FakeDB.new}

  describe '#creation' do
    it 'starts with an empty hash' do
      expect(fakeDB.all).to be_empty
    end
  end

  describe '#create' do
    it 'can make the correct records'
  end
  describe '#find' do
    it 'retrieves the correct reccords'
  end
  describe '#all' do
    it 'can retrieve all the pairs'
  end
end
