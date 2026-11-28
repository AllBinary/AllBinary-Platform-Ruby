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

require "java/lang/Object"
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Communication; module Log

#ActualPlatform
class LogUtil
    attr_accessor :commonSeps, :logFormatUtil, :LABEL

    def jfields_org_allbinary_logic_communication_log_LogUtil
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @logFormatUtil = LogFormatUtil.getInstance()
        @LABEL = "org.allbinary"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_LogUtil
    end
    

    def putL(log)
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
        self.put(specialMessage, anyType, functionName, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
    end
    

    def putFS(specialMessage, string, functionName)
        self.putS(specialMessage, string, functionName, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = @LABEL
        className = String.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(anyType.class.java_name).append(@commonSeps.COLON).append((::Org::Allbinary::TsUtil.getInstance().hashCode(anyType)).to_s(16)).to_s)
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        ::Android::Util::Log.i(@LABEL, message)
    end
    

    def putS(specialMessage, string, functionName, exception)
        className = @LABEL
        className = String.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(string).append(@commonSeps.COLON).append((::Org::Allbinary::TsUtil.getInstance().hashCode(string)).to_s(16)).to_s)
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        ::Android::Util::Log.i(@LABEL, message)
    end

    def self.instance()
        LogUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LogUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LogUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false)
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false)

begin
    LogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

