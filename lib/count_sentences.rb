require 'pry'

class String

  def sentence?
    self.end_with?(".") 
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = []
    self.split(/[.?!]/).map do |element|
      element.length > 0 ? sentences.push(element) : nil
    end
    sentences.length
  end
end