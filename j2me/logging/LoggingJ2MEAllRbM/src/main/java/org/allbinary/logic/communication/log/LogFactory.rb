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
# package org.allbinary.logic.communication.log


module ::Org; module Allbinary; module Logic; module Communication; module Log

#ActualPlatform
class LogFactory
    

    def self.getInstanceD()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        nullUtil = ::Org::Allbinary::Logic::NullUtil.getInstance()
        return Log.new(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT)
    end
    

    def self.getInstanceNoF(specialMessage, anyType, exception)
        return Log.new(specialMessage, anyType, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, exception)
    end
    

    def self.getInstance(specialMessage, anyType, functionName, exception)
        return Log.new(specialMessage, anyType, functionName, exception)
    end
    

    def self.getInstanceF(specialMessage, anyType, functionName)
        nullUtil = ::Org::Allbinary::Logic::NullUtil.getInstance()
        return Log.new(specialMessage, anyType, functionName, nullUtil.NULL_OBJECT)
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false)

end; end; end; end; end

