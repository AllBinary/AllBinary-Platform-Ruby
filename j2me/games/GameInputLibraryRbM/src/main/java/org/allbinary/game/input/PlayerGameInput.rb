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

require "java/lang/Object"
require "org/allbinary/game/input/event/GameKeyEventListenerInterface"
require "org/allbinary/game/input/GameInput"

class PlayerGameInput < GameInput
    include GameKeyEventListenerInterface
    attr_accessor :gameInputStrings, :playerInputId

    def initialize_fields
        @gameInputStrings = GameInputStrings.getInstance()
        @playerInputId = nil
    end
    

    def initialize(gameKeyEventList, removalGameKeyEventList, playerInputId)
        super(gameKeyEventList, removalGameKeyEventList)
        initialize_fields
        @playerInputId = playerInputId
    end
    

    def onPressGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
        end
    end
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.add(gameKeyEvent)
        end
    end
    

    def onDownKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
        end
    end
    

    def onDownKey(gameKeyEvent)
        java_monitor.synchronize do
        PreLogUtil.put(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.to_s).to_s, self, @gameInputStrings.ON_DOWN_GAME_KEY)
        end
    end
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.addForRemoval(gameKeyEvent)
        end
    end
    

    def onUpKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def getPlayerInputId()
        return @playerInputId
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/input/GameInputStrings"

