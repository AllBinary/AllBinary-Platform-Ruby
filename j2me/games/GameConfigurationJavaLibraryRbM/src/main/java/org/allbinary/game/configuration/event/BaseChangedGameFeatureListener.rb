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
# package org.allbinary.game.configuration.event

require "org/allbinary/game/configuration/event/GameFeatureListenerInterface"

class BaseChangedGameFeatureListener
    include GameFeatureListenerInterface
    attr_accessor :logUtil, :gameFeatureUtil, :list, :changed

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameFeatureUtil = GameFeatureUtil.getInstance()
        @list = BasicArrayListD.new()
        @changed = true
    end

    def initialize
        initialize_fields
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(CommonStrings.getInstance().NOT_IMPLEMENTED, self)
    end
    

    def onGameFeatureChange(gameFeatureEvent)
        @logUtil.putF(StringMaker.new().append(@gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).to_s, self, @gameFeatureUtil.ON_GAME_FEATURE_CHANGE)
        @list.add(gameFeatureEvent.getGameOption())
        self.setChanged(true)
    end
    

    def add(gameFeature)
        @list.add(gameFeature)
    end
    

    def remove(gameFeature)
        @list.remove(gameFeature)
    end
    

    def setChanged(initialized)
        @changed = initialized
        if !self.isChanged()
            @list.clear()
        end
    end
    

    def isChangedFeature(gameFeature)
        isChanged = @list.contains(gameFeature)
        stringBuffer = StringMaker.new()
        stringBuffer.append("GameFeature: ")
        stringBuffer.append(StringUtil.getInstance().toString(gameFeature))
        stringBuffer.append(" isFeature: ")
        stringBuffer.appendboolean(Features.getInstance().isFeature(gameFeature))
        stringBuffer.append(" isChanged: ")
        stringBuffer.appendboolean(isChanged)
        @logUtil.putF(stringBuffer.to_s, self, "isChanged")
        return isChanged
    end
    

    def isChanged()
        return @changed
    end
end

require "org/allbinary/game/configuration/feature/Feature"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/configuration/event/GameFeatureEvent"

