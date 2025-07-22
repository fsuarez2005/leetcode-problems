#!/usr/bin/env ruby

CHECKARGV=true

# return number of digits in O(1)
def numberOfDigits(n)
  return Math.log10(n).to_i + 1
end

def oppositeIndex(index, length)
  return length - index - 1
end

# returns the digit at position in O(1)
# zero index
def getDigit(n, pos)
  digits = numberOfDigits(n)

  return (n / (10 ** (digits-pos-1))) % 10
end

def isPalindrome(n)
  # negative numbers are never palindromes
  return false if (n < 0)
 
  digits = numberOfDigits(n)  

  # go from 0 to center
  # because number of digits is known,
  # we can match it with the corresponding digit

  for i in (0..digits-1)
    d1 = getDigit(n,i)
    d2 = getDigit(n,oppositeIndex(i,digits))
    return false if (d1 != d2)
    # puts "#{i}: #{d1} #{d2}"
  end
  return true
end

if CHECKARGV then
  for n in ARGV
    puts "#{n}: #{isPalindrome(n.to_i)}"
  end
end

