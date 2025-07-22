#!/usr/bin/env ruby


def toDigit(char)
  case char
    when '0'; 0
    when '1'; 1
    when '2'; 2
    when '3'; 3
    when '4'; 4
    when '5'; 5
    when '6'; 6
    when '7'; 7
    when '8'; 8
    when '9'; 9
    else; nil
  end
end

def isDigit?(char)
  return char.length == 1 && ('0' .. '9').include?(char)
end

def myatoi(s)
  output = 0
  positive = true
  frontend = true

  for i in s.each_char
    puts "char: #{i}"

    if frontend && i == ' ' then
      next
    elsif frontend && i == '-' then
      positive = false
      frontend = false
      next
    elsif frontend && i == '+' then
      positive = true
      frontend = false
      next
    elsif isDigit?(i)
      frontend = false

      output = output * 10
      output = output + toDigit(i) 
    else
      break
    end

  end
  return output
end


p myatoi("123frank")
p myatoi("   123")
p myatoi("   +123 frank")





