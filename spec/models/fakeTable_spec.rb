require_relative '../../app/models/fakeTable.rb'

RSpec.describe FakeTable, type: :model do
  let!(:record_1){double('fakeRecord_1', key: '1', value: 'a')}
  let!(:record_2){double('fakeRecord_2', key: '2', value: 'b')}
  let!(:fakeRecordClass){double('fakeRecordClass', new: record_1)}

  before(:each) do
    FakeTable.class_variable_set(:@@database,[])
    FakeTable.class_variable_set(:@@fakeRecordClass,fakeRecordClass)
  end

  describe '#creation' do
    it 'starts with an empty hash' do
      expect(FakeTable.all).to be_empty
    end
  end

  describe '#create' do
    it 'can make records' do
      expect{FakeTable.create(record_1)}.to change{FakeTable.all.length}.by(1)
    end
  end

  context 'DB is populated' do
    before :each do
      FakeTable.class_variable_set(:@@database,[record_1,record_2])
    end

    describe '#find' do
      it 'retrieves the correct record' do
        expect(FakeTable.find(key: '1').first).to eq(record_1)
        expect(FakeTable.find(key: '2').first).to eq(record_2)
      end
    end

    describe '#all' do
      it 'can retrieve all the records' do
        expect(FakeTable.all.length).to eq(2)
      end
    end
  end
end
