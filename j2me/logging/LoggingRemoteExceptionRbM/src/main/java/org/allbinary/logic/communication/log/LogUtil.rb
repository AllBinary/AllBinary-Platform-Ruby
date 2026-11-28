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
# require "java/io/IOException"

module ::Org; module Allbinary; module Logic; module Communication; module Log

#ActualPlatform
class LogUtil
    attr_accessor :MESSAGE, :isFirstException, :timeDelayHelper, :abeClientInformation, :stringBuffer

    def jfields_org_allbinary_logic_communication_log_LogUtil
        @MESSAGE = "message"
        @isFirstException = true
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(200000)
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_LogUtil
    end
    

    def putL(log)
        if log == nil
            return
        end
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
    end
    

    def putFS(specialMessage, className, functionName)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        if exception != nil
            if exception.class.java_name.compareTo(::Org::Apache::Xmlrpc::XmlRpcException.java_name) == 0
                return
            end
            if exception.class.java_name.compareTo(IOException.java_name) == 0
                return
            end
            if @isFirstException || @timeDelayHelper.isTimeTNT()
                className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
                @isFirstException = false
                if anyType != nil && anyType.class.java_name != nil
                    className = String.new(anyType.class.java_name)
                end
                message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
                begin
                    puts("Eeeek")
                    if @abeClientInformation == nil
                        raise RuntimeError.new()
                    end
                    hashtable = @abeClientInformation.toHashtable()
                    @stringBuffer.delete(0, @stringBuffer.length())
                    @stringBuffer.append(message)
                    @stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
                    @stringBuffer.append(::Org::Allbinary::Canvas::SpecialMessageUtil.getInstance().get())
                    hashtable.put(@MESSAGE, @stringBuffer.to_s)
                    XmlRpcRemoteLogClient.new(@abeClientInformation).get(hashtable)
                rescue StandardError => e
                    puts("Exception")
                    puts(e.full_message)
                end
            end
        end
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

module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcException, "org/apache/xmlrpc/XmlRpcException" unless const_defined?(:XmlRpcException, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Canvas; autoload :SpecialMessageUtil, "org/allbinary/canvas/SpecialMessageUtil" unless const_defined?(:SpecialMessageUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false)
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false)
autoload :XmlRpcRemoteLogClient, "org/allbinary/logic/communication/log/XmlRpcRemoteLogClient" unless const_defined?(:XmlRpcRemoteLogClient, false)
require "java/lang/System"

begin
    LogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

