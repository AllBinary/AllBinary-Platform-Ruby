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

module ::Org; module Allbinary; module Game; module Input

class GameInput
    attr_accessor :logUtil, :commonStrings, :gameKeyEventList, :removalGameKeyEventList, :isRemoveDuplicateKeyPresses

    def jfields_org_allbinary_game_input_GameInput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gameKeyEventList = nil unless instance_variable_defined?(:@gameKeyEventList)
        @removalGameKeyEventList = nil unless instance_variable_defined?(:@removalGameKeyEventList)
        @isRemoveDuplicateKeyPresses = nil unless instance_variable_defined?(:@isRemoveDuplicateKeyPresses)
    end
    

    def initialize(gameKeyEventList, removalGameKeyEventList)
        jfields_org_allbinary_game_input_GameInput
        @gameKeyEventList = gameKeyEventList
        @removalGameKeyEventList = removalGameKeyEventList
        @isRemoveDuplicateKeyPresses = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES)
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

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end

