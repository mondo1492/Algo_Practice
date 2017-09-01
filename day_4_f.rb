require 'set'

def rec_permutation(str)
  return [str] if str.length <= 1

  first = str.slice!(0)

  perms = rec_permutation(str)

  total_permuations = []

  perms.each do |perm|
    (0..perm.length).each do |i|
      total_permuations << (perm[0...i] + first + perm[i..-1]).to_s
    end
  end
  total_permuations

end

# cats
# s

p rec_permutation("abc")
