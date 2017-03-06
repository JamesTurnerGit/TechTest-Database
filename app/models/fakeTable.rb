require_relative 'FakeRecord'

class FakeTable
  @@database = []
  @@fakeRecordClass = FakeRecord

  def self.all
    return @@database
  end

  def self.create (params)
    @@database << @@fakeRecordClass.new(params)
  end

  def self.find (key)
    @@database.select{|record| record.key == key[:key]}
  end

end
