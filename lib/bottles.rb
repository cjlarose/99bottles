class Bottles
  def verse(verse_number)
    if verse_number == 0
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    elsif verse_number == 1
      <<~VERSE
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    elsif verse_number == 2
      <<~VERSE
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.
        Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.
      VERSE
    end
  end

  def verses(start_verse_number, end_verse_number)
    start_verse_number.downto(end_verse_number).map do |verse_number|
      verse verse_number
    end.join("\n")
  end

  def song
    verses 99, 0
  end
end
