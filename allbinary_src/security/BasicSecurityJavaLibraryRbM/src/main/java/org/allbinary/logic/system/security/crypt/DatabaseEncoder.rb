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


module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt

class DatabaseEncoder
    

    def initialize()
    end
    

    def self.encode(value)
        begin
            array = value
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            (0...array.length).each do |index|
                stringBuffer.append(array[index].to_s)
                if index < array.length - 1
                    stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        end
    end
    

    def self.decode(value)
        begin
            tokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
            vector = tokenizer.getTokensFromString(value, ::Org::Allbinary::Util::BasicArrayListD.new())
            size = vector.size()
            decode = (Array.new(size, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            byteOfData = nil
            (0...size).each do |index|
                byteOfData = vector.objectArray[index]
                decode[index] = Byte.parseByte(byteOfData)
            end
            return decode
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putSE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

