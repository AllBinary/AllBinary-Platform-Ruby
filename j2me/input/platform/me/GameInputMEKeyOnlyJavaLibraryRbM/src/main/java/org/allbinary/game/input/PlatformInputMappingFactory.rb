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
# package org.allbinary.game.input


class PlatformInputMappingFactory
    attr_accessor :logUtil, :inputToGameKeyMapping

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @inputToGameKeyMapping = PersistentInputMapping.getNullInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PlatformInputMappingFactory.instance
    end
    

    def getPersistentInputMappingInstance()
        begin
            if @inputToGameKeyMapping == PersistentInputMapping.getNullInstance()
                @inputToGameKeyMapping = NormalJ2MEGameInputMapping.new()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
        end
        return @inputToGameKeyMapping
    end

    def self.instance()
        PlatformInputMappingFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PlatformInputMappingFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PlatformInputMappingFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlatformInputMappingFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PersistentInputMapping, "org/allbinary/game/input/mapping/PersistentInputMapping"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :NormalJ2MEGameInputMapping, "org/allbinary/game/input/NormalJ2MEGameInputMapping"

begin
    PlatformInputMappingFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

