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
# package org.allbinary.logic.string.tokens


class Tokenizer
    attr_accessor :sep, :endSep

    def initialize_fields
        @sep = nil
        @endSep = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(sep)
        initialize_fields
        if sep == nil || TsUtil.getInstance().compareTo(sep, StringUtil.getInstance().EMPTY_STRING) == 0
            raise StandardError.new("Sep provided is not valid")
        end
        @sep = sep
    end
    

    def setSep(sep)
        @sep = sep
    end
    

    def setEndSep(endSep)
        @endSep = endSep
    end
    

    def getInsideSep(string)
        tokenList = BasicArrayListD.new()
        index = 0
        size = string.length
        while index < size
            index = (string.index(@sep, index) || -1)
            if index != -1
                end_ = (string.index(@endSep, index + @sep.length) || -1)
                if end_ != -1
                    tokenList.add(string[index + @sep.length...end_ - (@endSep.length - 1)])
                    index = end_ + @endSep.length
                else
                end
            else
                break
            end
        end
        return tokenList
    end
    

    def getTokensFromString(string, tokenVector)
        index = 0
        end_ = 0
        while index < string.length
            end_ = (string.index(@sep, index) || -1)
            if end_ != -1
                tokenVector.add(string[index...end_])
                index = end_ + @sep.length
            else
                tokenVector.add(string[index...string.length])
                break
            end
        end
        return tokenVector
    end
    

    def getTokens(stringVector)
        tokenHashtable = StdUtil.getInstance().createHashtable()
        string = StringUtil.getInstance().EMPTY_STRING
        end_ = 0
        size = stringVector.size()
        (0...size).each do |index|
            string = stringVector.objectArray[index]
            end_ = (string.index(@sep) || -1)
            if end_ >= 0
                tokenHashtable.put(string[0...end_], string[end_ + 1...string.length])
            end
        end
        return tokenHashtable
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

