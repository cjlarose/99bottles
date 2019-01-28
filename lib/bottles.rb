class Bottles
  def verse(verse_number)
    if verse_number == 99
      <<~VERSE
        99 bottles of beer on the wall, 99 bottles of beer.
        Take one down and pass it around, 98 bottles of beer on the wall.
      VERSE
    elsif verse_number == 98
      <<~VERSE
        98 bottles of beer on the wall, 98 bottles of beer.
        Take one down and pass it around, 97 bottles of beer on the wall.
      VERSE
    elsif verse_number == 89
      <<~VERSE
        89 bottles of beer on the wall, 89 bottles of beer.
        Take one down and pass it around, 88 bottles of beer on the wall.
      VERSE
    elsif verse_number == 2
      <<~VERSE
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    elsif verse_number == 1
      <<~VERSE
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    elsif verse_number == 0
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
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
