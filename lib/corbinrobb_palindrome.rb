require "corbinrobb_palindrome/version"


module CorbinrobbPalindrome
  # Returns true for a palindrome and false otherwise
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  #Returns content for palindrome testing
  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end


class String
  include CorbinrobbPalindrome
end

class Integer
  include CorbinrobbPalindrome
end
