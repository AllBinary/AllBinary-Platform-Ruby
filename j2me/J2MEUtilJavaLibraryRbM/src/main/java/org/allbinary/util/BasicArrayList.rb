# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.util

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"

#This is a very fast and simple resizable list.
class BasicArrayList
    attr_accessor :arrayUtil, :objectArray, :currentIndex

    def initialize_fields
        @arrayUtil = ArrayUtil.getInstance()
        @objectArray = nil
        @currentIndex = 0
    end
    

    def initialize(objectArray)
        initialize_fields
        @objectArray = objectArray
    end
    

    def addAt(index, element)
        if index > @currentIndex || index < 0
            stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList::SIZE)
            stringBuffer.appendint(@currentIndex)
            raise IndexError.new(stringBuffer.to_s)
        end
        self.ensureCapacity(@currentIndex + 1)
        @objectArray[index + 1, @currentIndex - index] = @objectArray[index, @currentIndex - index]
        @objectArray[index] = element
        @currentIndex += 1
    end
    

    def add(anyType)
        self.ensureCapacity(@currentIndex + 1)
        @objectArray[((@currentIndex += 1) - 1)] = anyType
        return true
    end
    

    def removeAt(index)
        if index >= @currentIndex
            stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList::SIZE)
            stringBuffer.appendint(@currentIndex)
            raise IndexError.new(stringBuffer.to_s)
        end
        oldValue = @objectArray[index]
        numMoved = @currentIndex - index - 1
        if numMoved > 0
            @objectArray[index, numMoved] = @objectArray[index + 1, numMoved]
        end
        @objectArray[(@currentIndex -= 1)] = nil
        return oldValue
    end
    

    def remove(anyType)
        if anyType == nil
            (0...@currentIndex).each do |index|
                if @objectArray[index] == nil
                    numMoved = @currentIndex - index - 1
                    if numMoved > 0
                        @objectArray[index, numMoved] = @objectArray[index + 1, numMoved]
                    end
                    @objectArray[(@currentIndex -= 1)] = nil
                    return true
                end
            end
        else
            (0...@currentIndex).each do |index|
                if anyType == @objectArray[index] || anyType.equals(@objectArray[index])
                    numMoved = @currentIndex - index - 1
                    if numMoved > 0
                        @objectArray[index, numMoved] = @objectArray[index + 1, numMoved]
                    end
                    @objectArray[(@currentIndex -= 1)] = nil
                    return true
                end
            end
        end
        return false
    end
    

    def removeAll2(list)
        result = true
        size = list.size()
        (0...size).each do |index|
            if self.remove(list.get(index))
            else
                result = false
            end
        end
        return result
    end
    

    def addAll2(list)
        self.ensureCapacity(@currentIndex + list.currentIndex)
        listSize = list.currentIndex
        (0...listSize).each do |index|
            @objectArray[((@currentIndex += 1) - 1)] = list.objectArray[index]
        end
        return true
    end
    

    def addAllList(list)
        newObjectArray = list.toArray()
        return self.addAll(newObjectArray)
    end
    

    def addAll(newObjectArray)
        numSize = newObjectArray.length
        self.ensureCapacity(@currentIndex + numSize)
        @objectArray[@currentIndex, numSize] = newObjectArray[0, numSize]
        @currentIndex += numSize
        return numSize != 0
    end
    

    def ensureCapacity(minSize)
        oldCapacity = @objectArray.length
        if minSize > oldCapacity
            newCapacity = ((oldCapacity * 3) >> 1) + 1
            if newCapacity < minSize
                newCapacity = minSize
            end
            @objectArray = @arrayUtil.copyOf(@objectArray, newCapacity)
        end
    end
    

    def trimToSize()
        oldCapacity = @objectArray.length
        if @currentIndex < oldCapacity
            @objectArray = @arrayUtil.copyOf(@objectArray, @currentIndex)
        end
    end
    

    def indexOf(anyType)
        if anyType == nil
            (0...@currentIndex).each do |i|
                if @objectArray[i] == nil
                    return i
                end
            end
        else
            (0...@currentIndex).each do |i|
                if anyType.equals(@objectArray[i])
                    return i
                end
            end
        end
        return -1
    end
    

    def lastIndexOf(anyType)
        if anyType == nil
            (@currentIndex - 1).step(0, -(1)) do |i|
                if @objectArray[i] == nil
                    return i
                end
            end
        else
            (@currentIndex - 1).step(0, -(1)) do |i|
                if anyType.equals(@objectArray[i])
                    return i
                end
            end
        end
        return -1
    end
    

    def get(index)
        if index >= @currentIndex
            stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList::SIZE)
            stringBuffer.appendint(@currentIndex)
            raise IndexError.new(stringBuffer.to_s)
        end
        return @objectArray[index]
    end
    

    def set(index, element)
        if index >= @currentIndex
            stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList::SIZE)
            stringBuffer.appendint(@currentIndex)
            raise IndexError.new(stringBuffer.to_s)
        end
        oldValue = @objectArray[index]
        @objectArray[index] = element
        return oldValue
    end
    

    def clear()
        (0...@currentIndex).each do |i|
            @objectArray[i] = nil
        end
        @currentIndex = 0
    end
    

    def size()
        return @currentIndex
    end
    

    def isEmpty()
        return @currentIndex == 0
    end
    

    def contains(anyType)
        return self.indexOf(anyType) >= 0
    end
    

    def toArray()
        return @arrayUtil.copyOf(@objectArray, @currentIndex)
    end
    

    def toArrayType(objectArray)
        if objectArray.length < @currentIndex
            return @arrayUtil.copyOfType(@objectArray, @currentIndex, objectArray.class)
        end
        objectArray[0, @currentIndex] = @objectArray[0, @currentIndex]
        if objectArray.length > @currentIndex
            objectArray[@currentIndex] = nil
        end
        return objectArray
    end
    

    def clone()
        size = self.size()
        list = BasicArrayListS.new(size)
        anyType = nil
        (0...size).each do |index|
            anyType = @objectArray[index]
            list.add(anyType)
        end
        return list
    end
    

    def toString()
        _COMMA_SEP = CommonSeps.getInstance().COMMA_SEP
        stringBuffer = StringMaker.new()
        (0...@currentIndex).each do |index|
            stringBuffer.append(@objectArray[index].to_s)
            stringBuffer.append(_COMMA_SEP)
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/ArrayUtil"
require "org/allbinary/util/BasicArrayListS"
require "java/lang/System"

class BasicArrayList
    SIZE = ", Size: "
end

