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

require "org/allbinary/game/input/InputProcessor"

class GameCanvasInputProcessor < InputProcessor
    attr_accessor :logUtil, :allBinaryGameCanvas, :downGameKeyEventHandler, :upGameKeyEventHandler, :downKeyEventHandler, :smallIntegerSingletonFactory, :inputToGameKeyMapping, :NONE, :gameKeyEventFactory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @allBinaryGameCanvas = nil
        @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
        @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        @downKeyEventHandler = DownKeyEventHandler.getInstance()
        @smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        @inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        @NONE = GameKeyFactory.getInstance().NONE
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        initialize_fields
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
                @logUtil.putF(StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
            end
            keyCodeAsInteger = @smallIntegerSingletonFactory.getAtNoThrow(keyCode)
            @downKeyEventHandler.fireEventI(keyCodeAsInteger)
            @downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger)
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    

    def keyReleasedByDevice(canvas, keyCode, deviceId)
        self.removeGameKeyEvent(canvas, keyCode, deviceId, false)
    end
    

    def removeGameKeyEvent(canvas, keyCode, deviceId, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode)
            if gameKey != @NONE
                gameKeyEventSourceInterface = canvas
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                @upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else
                @logUtil.putF(StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.REMOVE_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.REMOVE_KEY_EVENT, e)
        end
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :GameKey, "org/allbinary/game/input/GameKey"
autoload :GameKeyEventSourceInterface, "org/allbinary/game/input/GameKeyEventSourceInterface"
autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory"
autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory"
autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler"
autoload :DownKeyEventHandler, "org/allbinary/game/input/event/DownKeyEventHandler"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory"
autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler"
autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

