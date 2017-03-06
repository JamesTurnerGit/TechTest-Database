require_relative '../../app/models/fakeDB.rb'

RSpec.describe FakeDB, type: :model do
  let!(:record_1){double('fakeRecord_1', key: '1', value: 'a')}
  let!(:record_2){double('fakeRecord_2', key: '2', value: 'b')}
  let!(:fakeRecordClass){double('fakeRecordClass', new: record_1)}
  let(:fakeDB){FakeDB.new (fakeRecordClass)}

  describe '#creation' do
    it 'starts with an empty hash' do
      expect(fakeDB.all).to be_empty
    end
  end

  describe '#create' do
    it 'can make records' do
      expect{fakeDB.create(record_1)}.to change{fakeDB.all.length}.by(1)
    end
  end

  context 'DB is populated' do
    before :each do
      fakeDB.create(record_1)
      allow(fakeRecordClass).to receive(:new).and_return(record_2)
      fakeDB.create(record_2)
    end

    describe '#find' do
      it 'retrieves the correct record' do
        expect(fakeDB.find(key: '1')).to eq(record_1)
        expect(fakeDB.find(key: '2')).to eq(record_2)
      end
    end

    describe '#all' do
      it 'can retrieve all the records' do
        expect(fakeDB.all.length).to eq(2)
      end
    end
  end
end
