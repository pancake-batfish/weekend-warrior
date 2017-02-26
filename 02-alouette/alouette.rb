class Alouette
  @@bird_parts = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

  @@refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
  def initialize

  end

  def self.lines_for_verse(verse)
    # returns an array of "Et la bec!" add-ons
    # appropriate for the given verse
    @lines = []
      (verse + 1).times do |count|
        @lines << "Et #{@@bird_parts[verse - count]}!"
      end
      return @lines
  end

  def verse(verse)
    # return a formatted string of the requested verse
    # @refrain + ("Je te plumerai #{@bird_parts[verse]}.\n" * 2) + lines_for_verse(verse) + "Alouette!\nAlouette!\nA-a-a-ah\n"
  end

  def sing
    # build the entire song, formatted as in text file
    # blank line between each verse and refrain
    # @bird_parts.length.times do |n|
    #   puts verse(n)
    #   puts
    # end
    # puts @refrain

  end

end
