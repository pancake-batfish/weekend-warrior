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

  def self.verse(verse)
    # return a formatted string of the requested verse
     @middle_lines = ""

      self.lines_for_verse(verse).each do |line|
        @middle_lines = @middle_lines + line + "\n" + line + "\n"
      end


    return "Je te plumerai #{@@bird_parts[verse]}.\n" * 2 + @middle_lines + "Alouette!\nAlouette!\nA-a-a-ah"
  end

  def self.sing
    # build the entire song, formatted as in text file
    # blank line between each verse and refrain
    @song = @@refrain

    @@bird_parts.length.times do |n|
      @song = @song + "\n\n" + self.verse(n) + "\n\n" + @@refrain
    end

    return @song

  end

end
