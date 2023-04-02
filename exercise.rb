class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    arr = str.split(' ').map do |word|
      if word.capitalize == word
        word.gsub(/\b[A-Z][a-z]{5,}(?<![.'",:;!?])\b/, "Marklar")
      else
        word.gsub(/\b[a-z]{5,}(?<![.'",:;!?])\b/, 'marklar')
      end
    end
    arr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a, b = 1, 1
    array = []
     array << a 
     array << b
    (nth-2).times do
      c = a + b
      array << c
      a, b = b, c
    end
    sum_array = array.map do |num|
     num.even? ? num : 0
    end
    sum_array.sum
  end
end