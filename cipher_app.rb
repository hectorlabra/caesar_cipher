def caesar_cipher(str, shift)
  encrypted_str = str.chars.map do |char|
    if char.match?(/[a-zA-Z]/)
      base = char.downcase == char ? 'a' : 'A'
      ((char.ord - base.ord + shift) % 26 + base.ord).chr
    else
      char
    end
  end.join

  encrypted_str
end

puts caesar_cipher("Héctor Labra", 13)