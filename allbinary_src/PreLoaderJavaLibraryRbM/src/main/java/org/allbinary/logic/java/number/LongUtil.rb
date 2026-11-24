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
# package org.allbinary.logic.java.number


module ::Org; module Allbinary; module Logic; module Java; module Number

class LongUtil
    

    def initialize()
    end
    

    def self.fillIn(end_)
        frameStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if frameStringBuffer.length() < LongData::MAX_LONG_LENGTH
            commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
            size = LongData::MAX_LONG_LENGTH - frameStringBuffer.length()
            (0...size).each do |index|
                frameStringBuffer.append(commonPhoneStrings.ZERO)
            end
        end
        frameStringBuffer.append(end_)
        return frameStringBuffer.to_s
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
autoload :LongData, "org/allbinary/logic/java/number/LongData" unless const_defined?(:LongData, false)

end; end; end; end; end

