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

#ActualPlatform
class PreLogUtil
    

    def initialize()
    end
    

    def self.put(specialMessage, anyType, functionName)
        PreLogUtil.putOE(specialMessage, anyType, functionName, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putOE(specialMessage, anyType, functionName, exception)
        className = LABEL
        actualClassName = anyType.class.java_name
        if actualClassName != nil
            className = actualClassName
        end
        message = ::Org::Allbinary::Logic::Communication::Log::LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        ::Android::Util::Log.i(LABEL, message)
    end
    

    def self.putS(specialMessage, className, functionName)
        PreLogUtil.putSE(specialMessage, className, functionName, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putSE(specialMessage, className, functionName, exception)
        message = ::Org::Allbinary::Logic::Communication::Log::LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        ::Android::Util::Log.i(className, message)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:LABEL, "org.allbinary")
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
            return nil if [:LABEL].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false); end; end; end; end; end

begin
    PreLogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

