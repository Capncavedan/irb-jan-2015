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

  def contains?(candidate)
    !!@string.match(/#{candidate}/)
  end

  def case_insensitive_equal?(candidate)
    !!@string.match(/#{candidate}/i)
  end

  def cleanup_whitespace
    @string.sub(/\A\s+/, "").sub(/\s+\Z/, "").gsub(/\s+/, " ")
  end

  def all_numeric?
    !!@string.match(/\A\d+\Z/)
  end

  def no_numerics?
    !@string.match(/\d+/)
  end

end
