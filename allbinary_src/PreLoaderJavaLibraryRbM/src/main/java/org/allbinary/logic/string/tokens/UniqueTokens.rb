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

# require "java/util/HashSet"

class UniqueTokens
    attr_accessor :specialCharacters

    def initialize_fields
        @specialCharacters = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
        @specialCharacters.add("!")
        @specialCharacters.add("@")
        @specialCharacters.add(CommonPhoneStrings.getInstance().POUND)
        @specialCharacters.add("$")
        @specialCharacters.add("%")
        @specialCharacters.add("^")
        @specialCharacters.add(CommonSeps.getInstance().AMPERSAND)
        @specialCharacters.add(CommonPhoneStrings.getInstance().STAR)
        @specialCharacters.add("(")
        @specialCharacters.add(")")
        @specialCharacters.add("-")
        @specialCharacters.add("_")
        @specialCharacters.add("+")
        @specialCharacters.add("=")
        @specialCharacters.add("\\")
        @specialCharacters.add("|")
        @specialCharacters.add(AbPathData.getInstance().EXTENSION_SEP)
        @specialCharacters.add(",")
        @specialCharacters.add("<")
        @specialCharacters.add(">")
        @specialCharacters.add("?")
        @specialCharacters.add("/")
        @specialCharacters.add("~")
        @specialCharacters.add("`")
    end
    

    # throws Exception
    def getWhithoutDashesAndSkipNumberOnlyTokens(stringVector)
        begin
            hashSet = HashSet.new()
            index = 0
            commonSeps = CommonSeps.getInstance()
            while index < stringVector.size()
                keywords = stringVector.get(index)
                tokenizer = Tokenizer.new(commonSeps.COMMA)
                keywordVector = tokenizer.getTokensFromString(keywords, BasicArrayListD.new())
                (0...keywordVector.size()).each do |forIndex|
                    cleanString = keywordVector.get(forIndex)
                    cleanString = cleanString.strip
                    if (cleanString.index("-") || -1) != -1
                        cleanString = Replace.new("-", commonSeps.SPACE).all(cleanString)
                    end
                    hashSet.add(cleanString)
                    if (cleanString.index(" ") || -1) != -1
                        spaceTokenizer = Tokenizer.new(commonSeps.SPACE)
                        subKeywordVector = spaceTokenizer.getTokensFromString(cleanString, BasicArrayListD.new())
                        (0...subKeywordVector.size()).each do |spaceIndex|
                            subCleanString = subKeywordVector.get(spaceIndex)
                            if !isSpecialCharacter(subCleanString) && !numberOnly(subCleanString)
                                hashSet.add(subCleanString)
                            end
                        end
                    end
                end
                index += 1
            end
            return hashSet
        rescue StandardError => e
            raise e
        end
    end
    

    def numberOnly(subCleaningString)
        begin
            Integer(subCleaningString)
            return true
        rescue ArgumentError => e
            return false
        end
    end
    

    def isSpecialCharacter(subCleaningString)
        (0...@specialCharacters.size()).each do |index|
            if (subCleaningString <=> @specialCharacters.get(index)) == 0
                return true
            end
        end
        return false
    end
end

require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/string/tokens/Tokenizer"

