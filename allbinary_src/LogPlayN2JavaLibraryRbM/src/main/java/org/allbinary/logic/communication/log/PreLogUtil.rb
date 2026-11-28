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

module ::Java; module Lang; autoload :JavaNative, "java/lang/JavaNative"; end; end
# require "jsinterop/annotations/JsType"

module ::Org; module Allbinary; module Logic; module Communication; module Log

#ActualPlatform
class PreLogUtil
    

    def initialize()
    end
    

    def self.put(specialMessage, anyType, functionName)
        className = PreLogUtil.getClassName(anyType)
        if className == nil
            className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
        end
        className = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(className).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().FORWARD_SLASH).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(anyType)).to_s
        message = LogFormatUtil.getInstance().getS(className, functionName, specialMessage)
        ::Playn::Core::PlayN.getInstance().log().debug((LOG_SUCCESS).to_s + message)
    end
    

    def self.putOE(specialMessage, anyType, functionName, exception)
        className = PreLogUtil.getClassName(anyType)
        if className == nil
            className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
        end
        className = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(className).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().FORWARD_SLASH).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(anyType)).to_s
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        ::Playn::Core::PlayN.getInstance().log().error((LOG_SUCCESS).to_s + message, exception)
    end
    

    def self.putS(specialMessage, className, functionName)
        message = LogFormatUtil.getInstance().getS(className, functionName, specialMessage)
        ::Playn::Core::PlayN.getInstance().log().debug((LOG_SUCCESS).to_s + message)
    end
    

    def self.putSE(specialMessage, className, functionName, exception)
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        ::Playn::Core::PlayN.getInstance().log().error((LOG_SUCCESS).to_s + message, exception)
    end
    

    def self.getClassName(anyType)
        raise RuntimeError, "UnsupportedOperationException: native method PreLogUtil.getClassName has a parameter or result type the Ruby JNI runtime does not pass"
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:LOG_SUCCESS, "org.allbinary: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PreLogUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:LOG_SUCCESS].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Playn; module Core; autoload :PlayN, "playn/core/PlayN" unless const_defined?(:PlayN, false); end; end
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false)

begin
    PreLogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

