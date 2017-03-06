module IndexHelper
  def createRecord(params)
    key = params.keys.first
    value = params[key]
    FakeTable.create(key: key, value: value)
  end

  def getValue (key)
    FakeTable.find(key: key).first.value
  end
end
