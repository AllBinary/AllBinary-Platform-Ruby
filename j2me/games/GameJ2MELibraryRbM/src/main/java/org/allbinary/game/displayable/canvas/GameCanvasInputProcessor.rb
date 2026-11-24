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
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "org/allbinary/game/input/InputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GameCanvasInputProcessor < ::Org::Allbinary::Game::Input::InputProcessor
    attr_accessor :logUtil, :allBinaryGameCanvas, :downGameKeyEventHandler, :upGameKeyEventHandler, :downKeyEventHandler, :smallIntegerSingletonFactory, :inputToGameKeyMapping, :NONE, :gameKeyEventFactory

    def jfields_org_allbinary_game_displayable_canvas_GameCanvasInputProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @allBinaryGameCanvas = nil unless instance_variable_defined?(:@allBinaryGameCanvas)
        @downGameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::DownGameKeyEventHandler.getInstance()
        @upGameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::UpGameKeyEventHandler.getInstance()
        @downKeyEventHandler = ::Org::Allbinary::Game::Input::Event::DownKeyEventHandler.getInstance()
        @smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        @inputToGameKeyMapping = ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        @NONE = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance().NONE
        @gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_GameCanvasInputProcessor
        @allBinaryGameCanvas = allBinaryGameCanvas
        @inputToGameKeyMapping.init(@allBinaryGameCanvas)
    end
    

    def keyPressedByDevice(keyCode, deviceId)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(@allBinaryGameCanvas, keyCode)
            if gameKey != @NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(@allBinaryGameCanvas, gameKey)
                @downGameKeyEventHandler.fireEvent(gameKeyEvent)
                @downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
            end
            keyCodeAsInteger = @smallIntegerSingletonFactory.getAtNoThrow(keyCode)
            @downKeyEventHandler.fireEventI(keyCodeAsInteger)
            @downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger)
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    java_overload :keyPressedByDevice, 2
    

    def keyReleasedByDevice(canvas, keyCode, deviceId)
        self.removeGameKeyEvent(canvas, keyCode, deviceId, false)
    end
    java_overload :keyReleasedByDevice, 3
    

    def removeGameKeyEvent(canvas, keyCode, deviceId, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode)
            if gameKey != @NONE
                gameKeyEventSourceInterface = canvas
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                @upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.REMOVE_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.REMOVE_KEY_EVENT, e)
        end
    end
    java_overload :removeGameKeyEvent, 4
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyEventSourceInterface, "org/allbinary/game/input/GameKeyEventSourceInterface" unless const_defined?(:GameKeyEventSourceInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler" unless const_defined?(:DownGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :DownKeyEventHandler, "org/allbinary/game/input/event/DownKeyEventHandler" unless const_defined?(:DownKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler" unless const_defined?(:UpGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

