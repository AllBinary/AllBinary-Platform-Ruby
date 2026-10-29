#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.java.array


class IntArrayUtil
    

    def initialize()
    end
    

    def self.toString(array)
        stringBuffer = StringMaker.new()
        (0...array.length).each do |index|
            stringBuffer.appendint(array[index])
            if index < array.length
                stringBuffer.append(", ")
            end
        end
        return stringBuffer.to_s
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.toString(array)
        stringBuffer = StringMaker.new()
        (0...array.length).each do |index|
            stringBuffer.append("{")
            (0...array[index].length).each do |index2|
                stringBuffer.appendint((array[index][index2]).to_i)
                if index2 < array[index].length - 1
                    stringBuffer.append(", ")
                end
            end
            stringBuffer.append("}")
            if index < array.length - 1
                stringBuffer.append(", \n")
            end
        end
        return stringBuffer.to_s
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.toString(array)
        stringBuffer = StringMaker.new()
        (0...array.length).each do |index|
            stringBuffer.append("{")
            (0...array[index].length).each do |index2|
                stringBuffer.append("{")
                (0...array[index][index2].length).each do |index3|
                    stringBuffer.appendint((array[index][index2][index3]).to_i)
                    if index3 < array[index][index2].length - 1
                        stringBuffer.append(", ")
                    end
                end
                stringBuffer.append("}")
                if index2 < array[index].length - 1
                    stringBuffer.append(", ")
                end
            end
            stringBuffer.append("}")
            if index < array.length - 1
                stringBuffer.append(", \n")
            end
        end
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"

