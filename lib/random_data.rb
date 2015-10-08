module RandomData

  def random_paragraph
    sentences = []
    rand(4..6).times do
      sentences << random_sentence
    end
 
    sentences.join(" ")
  end

  def random_sentence
    strings = []
    rand(3..8).times do
      strings << random_word
    end
 
    sentence = strings.join(" ")
    sentence.capitalize << "."
  end

  def random_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0,rand(3..8)].join
  end

  def random_number
    number = (1..9).to_a
    number.shuffle!
    number[0,rand(1..4)].join.to_i
  end
end