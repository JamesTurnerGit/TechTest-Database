class FakeRecord
  attr_reader :key, :value
  def initialize (params)
    @key = params[:key]
    @value = params[:value]
  end
end
