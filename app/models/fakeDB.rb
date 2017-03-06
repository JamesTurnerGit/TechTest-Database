require_relative 'FakeRecord'

class FakeDB
  def initialize (fakeRecordClass = FakeRecordClass)
    @database = []
    @fakeRecordClass = fakeRecordClass
  end

  def all
    return database
  end

  def create (params)
    database << fakeRecordClass.new(params)
  end

  def find (key)
    database.select{|record| record.key == key[:key]}[0]
  end

  private
  attr_reader :database, :fakeRecordClass
end
