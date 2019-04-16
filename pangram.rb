class Pangram
  def self.pangram?(sentence)
    letters_array = "abcdefghijklmnopqrstuvwxyz".split('')
    if sentence.length > 0
      sentence.downcase.sub("_"," ").split("").each { |letter|
          letters_array.delete(letter)
      }
    end
    return letters_array.length == 0
  end
end
