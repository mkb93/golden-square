def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  cipher.push("z")
  ciphertext_chars = plaintext.chars.map do |char|
    puts (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join('')
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
# puts "secretkey".chars.uniq + (('a'...'z').to_a - "secretkey".chars)
# puts (('a'...'z').to_a - "secretkey".chars)
 puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")


puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
