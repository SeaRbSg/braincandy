class Dictionary
  attr_accessor :wordlist

  def initialize
    @wordlist ||= Set.new(open('/usr/share/dict/words').readlines.map(&:downcase).map(&:strip))
  end
end
