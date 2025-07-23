#!/usr/bin/env ruby





def longestcommonprefix(strArr)
  currentIndex = 0
  matchingChars = []
  while (true)
    lastChar = nil


    for s in strArr
      puts s[currentIndex]
      if s[currentIndex] == nil
        # no more chars for current string
        return matchingChars
      end



      if lastChar == nil
        lastChar = s[currentIndex]
      elsif lastChar != s[currentIndex]
        # chars do not match
        return matchingChars
      else

      end


        

    end
    matchingChars << strArr[0][currentIndex]
    currentIndex = currentIndex + 1

  end


end


m = longestcommonprefix(["frank","fry","friend"])
p m
