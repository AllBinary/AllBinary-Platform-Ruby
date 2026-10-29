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
                basicTouchInputFactory = BasicTouchInputFactory.getInstance()
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER)
                inputToGameKeyMapping.add(gameKeyFactory.UP, basicTouchInputFactory.UP)
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, basicTouchInputFactory.LEFT)
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, basicTouchInputFactory.RIGHT)
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, basicTouchInputFactory.DOWN)
                @inputToGameKeyMapping = inputToGameKeyMapping
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
        end
        return @inputToGameKeyMapping
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/input/motion/button/BasicTouchInputFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class PlatformFormInputMappingFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

