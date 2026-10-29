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


class LongUtil
    

    def initialize()
    end
    

    def self.fillIn(end_)
        frameStringBuffer = StringMaker.new()
        if frameStringBuffer.length() < LongData::MAX_LONG_LENGTH
            commonPhoneStrings = CommonPhoneStrings.getInstance()
            size = LongData::MAX_LONG_LENGTH - frameStringBuffer.length()
            (0...size).each do |index|
                frameStringBuffer.append(commonPhoneStrings.ZERO)
            end
        end
        frameStringBuffer.append(end_)
        return frameStringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/logic/java/number/LongData"

