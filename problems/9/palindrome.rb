#!/usr/bin/env ruby


def isPalindrome(n)
  
  # negative numbers are never palindromes
  return false if (n < 0)


 
  digits = Math.log10(n).to_i + 1



  while (n > 0)
    r = n % 10
    n = n / 10

    puts "#{n} rem. #{r}"
  end 

end


isPalindrome(10501)





