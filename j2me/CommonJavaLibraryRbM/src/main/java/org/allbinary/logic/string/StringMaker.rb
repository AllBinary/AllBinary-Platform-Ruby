# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.string

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

class StringMaker
    attr_accessor :charArray, :currentLength

    def initialize_fields
        @charArray = nil
        @currentLength = 0
    end
    

    def initialize()
        initialize_fields
        @charArray = Array.new(20, "\0")
    end
    

    def append(string)
        stringLength = string.length
        self.ensureCapacity(@currentLength + stringLength)
        @charArray[@currentLength, (stringLength) - (0)] = string[0...stringLength].chars
        @currentLength += stringLength
        return self
    end
    

    def appendchar(c)
        self.ensureCapacity(@currentLength + 1)
        @charArray[((@currentLength += 1) - 1)] = c
        return self
    end
    

    def appendCharArray(charArray, start, end_)
        self.ensureCapacity(@currentLength + (end_ - start))
        (start...end_).each do |index|
            @charArray[((@currentLength += 1) - 1)] = charArray[index]
        end
        return self
    end
    

    def appendbyte(b)
        self.append((b).to_s)
        return self
    end
    

    def appendshort(b)
        self.append((b).to_s)
        return self
    end
    

    def appendint(i)
        self.append((i).to_s)
        return self
    end
    

    def appendlong(l)
        self.append((l).to_s)
        return self
    end
    

    def appendfloat(f)
        self.append((f).to_s)
        return self
    end
    

    def appendboolean(bool)
        if bool
            self.ensureCapacity(@currentLength + 4)
            @charArray[((@currentLength += 1) - 1)] = "t"
            @charArray[((@currentLength += 1) - 1)] = "r"
            @charArray[((@currentLength += 1) - 1)] = "u"
            @charArray[((@currentLength += 1) - 1)] = "e"
        else
            self.ensureCapacity(@currentLength + 5)
            @charArray[((@currentLength += 1) - 1)] = "f"
            @charArray[((@currentLength += 1) - 1)] = "a"
            @charArray[((@currentLength += 1) - 1)] = "l"
            @charArray[((@currentLength += 1) - 1)] = "s"
            @charArray[((@currentLength += 1) - 1)] = "e"
        end
        return self
    end
    

    def ensureCapacity(minSize)
        oldCapacity = @charArray.length
        if minSize > oldCapacity
            newCapacity = oldCapacity * 3
            if newCapacity < minSize
                newCapacity = minSize
            end
            copy = Array.new(newCapacity, "\0")
            min = self.min(@charArray.length, newCapacity)
            copy[0, min] = @charArray[0, min]
            @charArray = copy
        end
    end
    

    def min(value, value2)
        return ((value <= value2) ? value : value2)
    end
    

    def delete(start, end_)
        @currentLength -= (end_ - start)
        return self
    end
    

    def length()
        return @currentLength
    end
    

    def toString()
        return @charArray[0, @currentLength].join
    end
    alias_method :to_s, :toString
end

require "java/lang/System"

