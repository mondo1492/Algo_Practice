# 1 to 3999
# M = 1000
# D = 500
# X = 10
# L = 50
#
# 49
# X
#
# idea
# I
# II
# III
# III
# IV
# V
# VI
# VII
# VIII
# IX
# X
def roman(roman_int)

  numerals = {
      'I' => 1,
      'II' => 2,
      'III' => 3,
      'IV' => 4,
      'V' => 5,
      'VI' => 6,
      'VII' => 7,
      'VIII' => 8,
      'IX' => 9,
      'X' => 10,
      'XX' => 20,
      'XXX' => 30,
      'XL' => 40,
      'L' => 50,
      'LX' => 60,
      'LXX' => 70,
      'LXXX' => 80,
      'XC' => 90,
      'C' => 100,
      'CC' => 200,
      'CCC' => 300,
      'CD' => 400,
      'D' => 500,
      'DC' => 600,
      'DCC' => 700,
      'DCCC' => 800,
      'CM' => 900,
      'M' => 1000,
      'MM' => 2000,
      'MMM' => 3000,
    }
  build_char = ''
  running_val = 0
  add_val = 0
  roman_int.chars.each do |char|
    build_char += char
    if numerals[build_char] != nil
      add_val = numerals[build_char]
    else
      build_char = char
      running_val += add_val
    end
  end
  running_val + add_val
end

def roman2(roman_int)
  numerals = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000,
    }
    running_val = 0
    arr = []
  roman_int.chars.each_with_index do |let, idx|
    prev = arr.last || 0
    arr.push(numerals[let])
    if prev != 0 && arr.last > prev
      p "loop1"
      p idx
      running_val += (arr.last - prev)
      p running_val
    elsif prev != 0
      p "loop2"
      p idx
      running_val += arr.last
      p running_val
    end
  end
  running_val
end

# p roman('VI')
# p roman2('VI')
# p roman('XVI')
# p roman2('XVI')
# p roman('DCCVII')
# p roman2('DCCVII')
# p roman('DCCXVI')
# p roman2('DCCXVI')
p roman('CDXCIV')
p roman2('CDXCIV')
# p roman('LXX')
# p roman2('LXX')
