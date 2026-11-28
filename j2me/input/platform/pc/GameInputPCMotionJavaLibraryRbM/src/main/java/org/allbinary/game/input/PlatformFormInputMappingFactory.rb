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


module ::Org; module Allbinary; module Game; module Input

class PlatformFormInputMappingFactory
    attr_accessor :logUtil, :inputToGameKeyMapping

    def jfields_org_allbinary_game_input_PlatformFormInputMappingFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @inputToGameKeyMapping = ::Org::Allbinary::Game::Input::Mapping::InputToGameKeyMapping.getNullInstance()
    end

    def initialize
        jfields_org_allbinary_game_input_PlatformFormInputMappingFactory
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = PlatformFormInputMappingFactory.new()
        end
        return @@instance
    end
    

    def getOrCreate()
        begin
            if @inputToGameKeyMapping == ::Org::Allbinary::Game::Input::Mapping::InputToGameKeyMapping.getNullInstance()
                pcKeyFactory = PCKeyFactory.getInstance()
                inputToGameKeyMapping = ::Org::Allbinary::Game::Input::Mapping::InputToGameKeyMapping.new()
                gameKeyFactory = GameKeyFactory.getInstance()
                basicTouchInputFactory = ::Org::Allbinary::Input::Motion::Button::BasicTouchInputFactory.getInstance()
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
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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

module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false)
autoload :PCKeyFactory, "org/allbinary/game/input/PCKeyFactory" unless const_defined?(:PCKeyFactory, false)

begin
    PlatformFormInputMappingFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

