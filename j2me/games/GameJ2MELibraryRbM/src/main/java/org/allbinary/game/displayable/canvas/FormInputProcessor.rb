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

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/input/InputProcessor"

class FormInputProcessor < InputProcessor
    attr_accessor :logUtil, :commonStrings, :gameKeyEventFactory, :downKeyEventHandler, :upGameKeyEventHandler, :inputFactory, :platformKeyFactory, :allBinaryGameCanvas

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
        @downKeyEventHandler = DownKeyEventHandler.getInstance()
        @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        @inputFactory = InputFactory.getInstance()
        @platformKeyFactory = PlatformKeyFactory.getInstance()
        @allBinaryGameCanvas = nil
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        initialize_fields
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def keyPressedByDevice(keyCode, deviceId)
        begin
            PreLogUtil.put(StringMaker.new().append(@inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(@inputFactory.DEVICE_ID_LABEL).appendint(deviceId).to_s, self, @gameInputStrings.KEY_PRESSED)
            input = @inputFactory.getInstanceById(keyCode)
            gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(@allBinaryGameCanvas, input)
            @downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    

    def keyReleasedByDevice(canvas, keyCode, deviceId)
        begin
            input = @inputFactory.getInstanceById(keyCode)
            if @platformKeyFactory.isEnter(input)
                PreLogUtil.put(StringMaker.new().append(@inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(@inputFactory.DEVICE_ID_LABEL).appendint(deviceId).to_s, self, @gameInputStrings.KEY_RELEASED)
                gameKey = GameKeyFactory.getInstance().KEY_NUM0
                gameKeyEventSourceInterface = canvas
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                @upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/PlatformKeyFactory"
require "org/allbinary/game/input/event/DownKeyEventHandler"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/input/event/UpGameKeyEventHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

