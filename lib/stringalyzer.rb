class Stringalyzer

  def initialize(string)
    @string = string
  end

  def name_prefix?
    !!@string.match(/\A(Mr|Mrs|Miss|Dr)/)
  end

  def name_suffix?
    !!@string.match(/(Jr|Sr|III)\Z/)
  end

  def contains?(str)
    !!@string.match(/#{str}/)
  end
end
