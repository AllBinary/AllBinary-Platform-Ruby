# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.business.advertisement


class GameAdStateBase
    attr_accessor :adConfigurationP, :advertisementsP, :okayToShowAdsP

    def initialize_fields
        @adConfigurationP = nil
        @advertisementsP = Advertisements.new()
        @okayToShowAdsP = false
    end
    

    def initialize(adConfiguration)
        initialize_fields
        @adConfigurationP = adConfiguration
    end
    

    def initViewArray(viewArray)
    end
    

    def onStart(anyType)
        self.init()
    end
    

    def init()
    end
    

    def isShowingAtLocation(location)
        return false
    end
    

    def isShowingAt()
        return false
    end
    

    def show()
    end
    

    def hide()
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def processAdState(gameState, gameType)
    end
    

    def processPageAdState()
    end
    

    # throws Exception
    def playingAdState()
    end
    

    # throws Exception
    def playingAdStateWH(width, height)
    end
    

    # throws Exception
    def notPlayingAdState()
    end
    

    def setGameIsReady(gameIsReady)
    end
    

    def isGameIsReady()
        return false
    end
    

    def getAdvertisements()
        return @advertisementsP
    end
    

    def getAdConfiguration()
        return @adConfigurationP
    end
    

    def isOkayToShowPageAd()
        return false
    end
    

    def setOkayToShowAds(okayToShowAds)
        @okayToShowAdsP = okayToShowAds
    end
    

    def isOkayToShowAds()
        return @okayToShowAdsP
    end
    

    def isEnabled()
        return false
    end
end

require "org/allbinary/game/GameType"
require "org/allbinary/game/state/GameState"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/business/advertisement/AdConfiguration"
require "org/allbinary/business/advertisement/Advertisements"

