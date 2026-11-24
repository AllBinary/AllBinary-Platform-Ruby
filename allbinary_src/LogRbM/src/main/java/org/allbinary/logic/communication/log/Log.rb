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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Communication; module Log

class Log
    attr_accessor :logFormatUtil, :specialMessage, :anyType, :functionName, :exception

    def jfields_org_allbinary_logic_communication_log_Log
        @logFormatUtil = ::Org::Allbinary::Logic::Communication::Log::LogFormatUtil.getInstance()
        @specialMessage = nil unless instance_variable_defined?(:@specialMessage)
        @anyType = nil unless instance_variable_defined?(:@anyType)
        @functionName = nil unless instance_variable_defined?(:@functionName)
        @exception = nil unless instance_variable_defined?(:@exception)
    end
    

    def initialize(specialMessage, anyType, functionName, exception)
        jfields_org_allbinary_logic_communication_log_Log
        @specialMessage = specialMessage
        @anyType = anyType
        @functionName = functionName
        @exception = exception
    end
    

    def getSpecialMessage()
        return @specialMessage
    end
    

    def getObject()
        return @anyType
    end
    

    def getFunctionName()
        return @functionName
    end
    

    def getThrowable()
        return @exception
    end
    

    def toString()
        className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
        clazz = @anyType.class
        if clazz.java_name != nil
            className = clazz.java_name
        end
        return @logFormatUtil.get(className, @functionName, @specialMessage, @exception)
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false); end; end; end; end; end

end; end; end; end; end

