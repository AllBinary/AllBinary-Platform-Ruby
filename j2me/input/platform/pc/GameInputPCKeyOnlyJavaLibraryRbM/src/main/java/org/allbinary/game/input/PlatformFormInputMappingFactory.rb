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


class PlatformFormInputMappingFactory
    attr_accessor :logUtil, :inputToGameKeyMapping

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if PlatformFormInputMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT
            PlatformFormInputMappingFactory.instance = PlatformFormInputMappingFactory.new()
        end
        return PlatformFormInputMappingFactory.instance
    end
    

    def getOrCreate()
        begin
            if @inputToGameKeyMapping == InputToGameKeyMapping.getNullInstance()
                pcKeyFactory = PCKeyFactory.getInstance()
                inputToGameKeyMapping = InputToGameKeyMapping.new()
                gameKeyFactory = GameKeyFactory.getInstance()
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER)
                @inputToGameKeyMapping = inputToGameKeyMapping
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
        end
        return @inputToGameKeyMapping
    end

    def self.instance()
        PlatformFormInputMappingFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PlatformFormInputMappingFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlatformFormInputMappingFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory"
autoload :PCKeyFactory, "org/allbinary/game/input/PCKeyFactory"

begin
    PlatformFormInputMappingFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

