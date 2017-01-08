def is_palindrome(characters)
  characters = testing.downcase.tr('^a-z0-9', '')
  characters.reverse == characters
end
