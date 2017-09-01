def roman(roman_int)
  numerals =
    {
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
  new_loop = true
  roman_int.chars.each do |char|
    if new_loop || char == roman_int.chars.last
      build_char += char
    end
    if !numerals[build_char].nil?
      add_val = numerals[build_char]
      new_loop = true
    else
      build_char = char
      running_val += add_val
      new_loop = false
    end
  end
  running_val + add_val
end

def roman2(roman_int)
  numerals =
    {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000,
    }
  running_val = 0
  skip = false
  new_arr = roman_int.chars
  new_arr[0...-1].each_index do |idx|
    if skip
      skip = false
      next
    end

    if numerals[roman_int[idx]] < numerals[roman_int[idx + 1]]
      running_val += (numerals[roman_int[idx + 1]] - numerals[roman_int[idx]])
    else
      running_val += (numerals[roman_int[idx + 1]] + numerals[roman_int[idx]])
    end
    skip = true
  end

  if new_arr.length.odd?
    running_val += numerals[roman_int[-1]]
  end
  running_val
end

p roman('VI') # should be 6
p roman2('VI')
p roman('XVI') # should be 16
p roman2('XVI')
p roman('DCCVII') # should be 707
p roman2('DCCVII')
p roman('DCCXVI') # should be 716
p roman2('DCCXVI')
p roman('CDXCIV') # should be 494
p roman2('CDXCIV')
p roman('LXX') # should be 70
p roman2('LXX')
