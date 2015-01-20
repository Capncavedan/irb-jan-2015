class Stringalyzer

  def self.name_prefix?(str)
    !!str.match(/\A(Mr|Mrs|Miss|Dr)/)
  end

  def self.name_suffix?(str)
    !!str.match(/(Jr|Sr|III)\Z/)
   end

end
