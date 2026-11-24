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
# package org.allbinary.input

require "java/lang/JavaOverload"
require "org/allbinary/android/input/motion/AnalogLocationInputProcessor"
require "org/allbinary/game/input/GameKeyEventSourceInterface"

module ::Org; module Allbinary; module Input

class DirectionalAnalogLocationInputProcessor < ::Org::Allbinary::Android::Input::Motion::AnalogLocationInputProcessor
    include ::Org::Allbinary::Game::Input::GameKeyEventSourceInterface
    attr_accessor :logUtil, :inputProcessorArray, :gameKeyFactory, :leftGameKeyEvent, :rightGameKeyEvent, :upGameKeyEvent, :downGameKeyEvent, :leftTriggerGameKeyEvent, :rightTriggerGameKeyEvent

    def jfields_org_allbinary_input_DirectionalAnalogLocationInputProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @inputProcessorArray = nil unless instance_variable_defined?(:@inputProcessorArray)
        @gameKeyFactory = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance()
        @leftGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
        @rightGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
        @upGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
        @downGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
        @leftTriggerGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
        @rightTriggerGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
    end
    

    def initialize(inputProcessorArray)
        super()
        jfields_org_allbinary_input_DirectionalAnalogLocationInputProcessor
        @inputProcessorArray = inputProcessorArray
        begin
            @leftGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.LEFT)
            @rightGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.RIGHT)
            @upGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.UP)
            @downGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.DOWN)
            @leftTriggerGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.KEY_NUM0)
            @rightTriggerGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.KEY_NUM5)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def process(allbinaryLayerManager, analogLocationInput)
        begin
            customGPoint = nil
            customGPoint = analogLocationInput.getCustomGPoint()
            x = customGPoint.getX()
            y = customGPoint.getY()
            leftTrigger = analogLocationInput.getLeftTrigger()
            rightTrigger = analogLocationInput.getRightTrigger()
            if x < 0
                @inputProcessorArray[@leftGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @leftGameKeyEvent, x)
            elsif x > 0
                @inputProcessorArray[@rightGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @rightGameKeyEvent, x)
            end
            if y < 0
                @inputProcessorArray[@downGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @downGameKeyEvent, y)
            elsif y > 0
                @inputProcessorArray[@upGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @upGameKeyEvent, y)
            end
            if leftTrigger > 0
                @inputProcessorArray[@leftTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @leftTriggerGameKeyEvent, leftTrigger)
            end
            if rightTrigger > 0
                @inputProcessorArray[@rightTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @rightTriggerGameKeyEvent, rightTrigger)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put("Unable to process analog input", self, commonStrings.PROCESS, e)
        end
    end
    java_overload :process, 2
    

    def getSourceId()
        return 0
    end
    java_overload :getSourceId, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor" unless const_defined?(:GameInputProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Analog; autoload :AnalogLocationInput, "org/allbinary/game/input/analog/AnalogLocationInput" unless const_defined?(:AnalogLocationInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CustomGPoint, "org/allbinary/graphics/CustomGPoint" unless const_defined?(:CustomGPoint, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end

