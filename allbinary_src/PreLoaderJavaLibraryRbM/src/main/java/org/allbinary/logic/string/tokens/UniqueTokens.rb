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


module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens

class UniqueTokens
    attr_accessor :specialCharacters

    def jfields_org_allbinary_logic_string_tokens_UniqueTokens
        @specialCharacters = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_logic_string_tokens_UniqueTokens
        @specialCharacters.add("!")
        @specialCharacters.add("@")
        @specialCharacters.add(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().POUND)
        @specialCharacters.add("$")
        @specialCharacters.add("%")
        @specialCharacters.add("^")
        @specialCharacters.add(::Org::Allbinary::StringPackage::CommonSeps.getInstance().AMPERSAND)
        @specialCharacters.add(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().STAR)
        @specialCharacters.add("(")
        @specialCharacters.add(")")
        @specialCharacters.add("-")
        @specialCharacters.add("_")
        @specialCharacters.add("+")
        @specialCharacters.add("=")
        @specialCharacters.add("\\")
        @specialCharacters.add("|")
        @specialCharacters.add(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
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
            hashSet = ::Java::Util::HashSet.new()
            index = 0
            commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
            while index < stringVector.size()
                keywords = stringVector.get(index)
                tokenizer = Tokenizer.new(commonSeps.COMMA)
                keywordVector = tokenizer.getTokensFromString(keywords, ::Org::Allbinary::Util::BasicArrayListD.new())
                (0...keywordVector.size()).each do |forIndex|
                    cleanString = keywordVector.get(forIndex)
                    cleanString = cleanString.strip
                    if (cleanString.index("-") || -1) != -1
                        cleanString = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new("-", commonSeps.SPACE).all(cleanString)
                    end
                    hashSet.add(cleanString)
                    if (cleanString.index(" ") || -1) != -1
                        spaceTokenizer = Tokenizer.new(commonSeps.SPACE)
                        subKeywordVector = spaceTokenizer.getTokensFromString(cleanString, ::Org::Allbinary::Util::BasicArrayListD.new())
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

module ::Java; module Util; autoload :HashSet, "java/util/HashSet" unless const_defined?(:HashSet, false); end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false)

end; end; end; end; end

