#!/usr/bin/env ruby

=begin
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.
=end


def twosum(numberList, targetNumber)
  matches = []

  for m in (0..numberList.size-1)
    for n in (m+1..numberList.size-1)
      
      # sum = first + second
      sum = numberList[m] + numberList[n]

      matches.append([m,n]) if (sum == targetNumber)

    end
  end  
  return matches
end

p twosum([1,3,5,7,9],16)


