require_relative '../../app/models/fakeRecord.rb'

describe 'FakeRecord' do
  context 'has been created' do
    let!(:record){{key: 'pineapple', value: 'ham'}}
    let(:fakeRecord){FakeRecord.new(record)}
    describe '#key'do
      it 'should respond to #key with it\'s own key' do
        expect(fakeRecord.key).to eq("pineapple")
      end
    end
    describe '#value' do
      it 'should respond to #value with it\'s own value' do
        expect(fakeRecord.value).to eq('ham')
      end
    end
  end
end
