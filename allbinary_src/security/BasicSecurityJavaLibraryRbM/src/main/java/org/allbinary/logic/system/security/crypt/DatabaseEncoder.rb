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
# package org.allbinary.logic.system.security.crypt


class DatabaseEncoder
    

    def initialize()
    end
    

    def self.encode(value)
        begin
            array = value
            stringBuffer = StringMaker.new()
            (0...array.length).each do |index|
                stringBuffer.append(array[index].to_s)
                if index < array.length - 1
                    stringBuffer.append(CommonSeps.getInstance().SPACE)
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return StringUtil.getInstance().EMPTY_STRING
        end
    end
    

    def self.decode(value)
        begin
            tokenizer = Tokenizer.new(CommonSeps.getInstance().SPACE)
            vector = tokenizer.getTokensFromString(value, BasicArrayListD.new())
            size = vector.size()
            decode = Array.new(size, 0)
            byteOfData = nil
            (0...size).each do |index|
                byteOfData = vector.objectArray[index]
                decode[index] = Byte.parseByte(byteOfData)
            end
            return decode
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putSE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

