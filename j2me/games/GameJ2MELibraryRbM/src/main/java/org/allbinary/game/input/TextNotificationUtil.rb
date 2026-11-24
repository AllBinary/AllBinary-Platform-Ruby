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

class TextNotificationUtil
    attr_accessor :TWO, :FALSE, :gameNotificationEventHandler

    def jfields_org_allbinary_game_input_TextNotificationUtil
        @TWO = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(2)
        @FALSE = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
        @gameNotificationEventHandler = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_input_TextNotificationUtil
    end
    

    def self.getInstance()
        return TextNotificationUtil.instance
    end
    

    # throws Exception
    def fireError(message)
        ::Org::Allbinary::Media::Audio::PrimaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
        self.fire(message)
    end
    

    # throws Exception
    def fireNew(message)
        ::Org::Allbinary::Media::Audio::PrimaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
        self.fire(message)
    end
    

    # throws Exception
    def fireSuccess(message)
        ::Org::Allbinary::Media::Audio::PrimaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
        self.fire(message)
    end
    

    # throws Exception
    def fire(message)
        gameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, message, @TWO, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED, @FALSE)
        @gameNotificationEventHandler.fireEvent(gameNotificationEvent)
    end

    def self.instance()
        TextNotificationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TextNotificationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TextNotificationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TextNotificationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound" unless const_defined?(:ErrorSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :PrimaryPlayerQueueFactory, "org/allbinary/media/audio/PrimaryPlayerQueueFactory" unless const_defined?(:PrimaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SelectSound, "org/allbinary/media/audio/SelectSound" unless const_defined?(:SelectSound, false); end; end; end; end

begin
    TextNotificationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

