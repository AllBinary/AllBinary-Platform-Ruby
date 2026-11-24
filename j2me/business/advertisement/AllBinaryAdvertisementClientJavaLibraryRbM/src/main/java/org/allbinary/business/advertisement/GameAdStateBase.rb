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


module ::Org; module Allbinary; module Business; module Advertisement

class GameAdStateBase
    attr_accessor :adConfigurationP, :advertisementsP, :okayToShowAdsP

    def jfields_org_allbinary_business_advertisement_GameAdStateBase
        @adConfigurationP = nil unless instance_variable_defined?(:@adConfigurationP)
        @advertisementsP = Advertisements.new()
        @okayToShowAdsP = false unless instance_variable_defined?(:@okayToShowAdsP)
    end
    

    def initialize(adConfiguration)
        jfields_org_allbinary_business_advertisement_GameAdStateBase
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
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
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

module ::Org; module Allbinary; module Game; autoload :GameType, "org/allbinary/game/GameType" unless const_defined?(:GameType, false); end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
autoload :AdConfiguration, "org/allbinary/business/advertisement/AdConfiguration" unless const_defined?(:AdConfiguration, false)
autoload :Advertisements, "org/allbinary/business/advertisement/Advertisements" unless const_defined?(:Advertisements, false)

end; end; end; end

