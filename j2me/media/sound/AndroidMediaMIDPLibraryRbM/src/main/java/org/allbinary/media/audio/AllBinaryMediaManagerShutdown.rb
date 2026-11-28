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
# package org.allbinary.media.audio


module ::Org; module Allbinary; module Media; module Audio

class AllBinaryMediaManagerShutdown
    

    # throws Exception
    def self.shutdown(soundsFactoryInterface)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        logUtil.putF("No Media Shutdown for Android Process", @@instance, "shutdown")
    end

    def self.instance()
        AllBinaryMediaManagerShutdown.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AllBinaryMediaManagerShutdown.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AllBinaryMediaManagerShutdown.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryMediaManagerShutdown"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :SoundsFactoryInterface, "org/allbinary/media/audio/SoundsFactoryInterface" unless const_defined?(:SoundsFactoryInterface, false)

begin
    AllBinaryMediaManagerShutdown.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

