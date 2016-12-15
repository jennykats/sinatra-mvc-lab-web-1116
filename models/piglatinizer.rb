class PigLatinizer
  attr_accessor

  def piglatinize(word)
    final = ''
    if first_vowel?(word)
      final = word + 'way'
    else
      final = piglatin(word)
    end

    return final
  end

  def first_vowel?(word)
    letters = word.split('')
    if letters[0].downcase.scan(/[aeiou]/).empty?
      false
    else
      true
    end
  end

  def piglatin(word)
    letters = word.scan(/[aeiou]/)
    letter_index = word.index(letters[0])

    newstring = word[letter_index..-1] + word[0...letter_index] + 'ay'
    newstring
  end

  def to_pig_latin(sentence)
    piglatin = []
    words = sentence.split(" ")
    words.each do |word|
      piglatin << piglatinize(word)
    end
    piglatin.join(" ")
  end
end
