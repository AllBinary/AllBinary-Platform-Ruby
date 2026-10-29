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

class GameInput
    attr_accessor :logUtil, :commonStrings, :gameKeyEventList, :removalGameKeyEventList, :isRemoveDuplicateKeyPresses

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @gameKeyEventList = nil
        @removalGameKeyEventList = nil
        @isRemoveDuplicateKeyPresses = nil
    end
    

    def initialize(gameKeyEventList, removalGameKeyEventList)
        initialize_fields
        @gameKeyEventList = gameKeyEventList
        @removalGameKeyEventList = removalGameKeyEventList
        @isRemoveDuplicateKeyPresses = Features.getInstance().isFeature(InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES)
    end
    

    def add(gameKeyEvent)
        java_monitor.synchronize do
        if @isRemoveDuplicateKeyPresses && @gameKeyEventList.contains(gameKeyEvent)
            return
        end
        if gameKeyEvent != nil
            @gameKeyEventList.add(gameKeyEvent)
        else
            @logUtil.putF("Danger Passed Null GameKeyEvent", self, @commonStrings.ADD)
        end
        end
    end
    

    def addForRemoval(gameKeyEvent)
        java_monitor.synchronize do
        @removalGameKeyEventList.add(gameKeyEvent)
        end
    end
    

    def isForRemoval(gameKeyEvent)
        java_monitor.synchronize do
        return @removalGameKeyEventList.contains(gameKeyEvent)
        end
    end
    

    def clear()
        java_monitor.synchronize do
        @gameKeyEventList.clear()
        end
    end
    

    def removeNonAIInputGameKeyEvents()
        java_monitor.synchronize do
        list = @gameKeyEventList
        gameKeyEvent = nil
        index = list.size()
        while (index -= 1) >= 0
            gameKeyEvent = list.objectArray[index]
            if gameKeyEvent.getSourceId() != 1
                list.removeAt(index)
            end
        end
        end
    end
    

    def update()
        java_monitor.synchronize do
        removeList = @removalGameKeyEventList
        list = @gameKeyEventList
        size = removeList.size()
        (0...size).each do |index|
            anyType = removeList.objectArray[index]
            index2 = list.size()
            while (index2 -= 1) >= 0
                if list.objectArray[index2] == anyType
                    list.removeAt(index2)
                end
            end
        end
        removeList.clear()
        end
    end
    

    def getRemovalGameKeyEventList()
        return @removalGameKeyEventList
    end
    

    def getGameKeyEventList()
        return @gameKeyEventList
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"

