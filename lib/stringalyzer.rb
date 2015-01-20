class Stringalyzer

  def self.name_prefix?(str)
    !!(str.match /\A(Mr|Mrs|Ms|Miss|Dr)/)
  end

end
