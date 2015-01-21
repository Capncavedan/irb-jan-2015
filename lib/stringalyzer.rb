class Stringalyzer

  VALID_PREFIXES = %w(Mr Mrs Miss Dr)

  WORD_BOUNDARY = /\b/

  def initialize(string)
    @string = string
  end

  def name_prefix?
    # !!@string.match(/\A(Mr|Mrs|Miss|Dr|Cpl|Adm|Hon)/)
    @string.start_with?(*VALID_PREFIXES)
  end

  def name_suffix?
    # !!@string.match(/(Jr|Sr|III|II|IV|MD|DO|RN|MA|MS|BA|BS)\Z/)
    suffixes = %w(Jr Sr III II IV MD DO RN MA MS BA BS)
    @string.end_with?(*suffixes)
  end

  def contains?(candidate)
    # !!@string.match(/#{candidate}/)
    @string.downcase.include?(candidate.downcase)
  end

  def case_insensitive_equal?(candidate)
    # !!@string.match(/\A#{candidate}\Z/i)
    @string.downcase == candidate.downcase
  end

  def cleanup_whitespace
    # @string.sub(/\A\s+/, "").sub(/\s+\Z/, "").gsub(/\s+/, " ")
    @string.squeeze(" ").strip
  end

  def all_numeric?
    # !!@string.match(/\A\d+\Z/)
    @string.dup.delete("0-9") == ""
  end

  def no_numerics?
    # !@string.match(/\d+/)
    @string.dup.delete("0-9") == @string
  end

  def contains_any_of?(candidates)
    # !!@string.match(/\b(#{candidates.join('\b|\b')})\b/)
    (@string.split(WORD_BOUNDARY) & candidates).any?
  end

end
