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
# package org.allbinary.business.advertisement


class AdConfiguration
    attr_accessor :INNERACTIVE, :LEADBOLT, :ADMOB

    def initialize_fields
        @INNERACTIVE = nil
        @LEADBOLT = nil
        @ADMOB = nil
    end
    

    def initialize(advertIdArray)
        initialize_fields
        @INNERACTIVE = advertIdArray[0]
        @ADMOB = advertIdArray[1]
        @LEADBOLT = advertIdArray[2]
    end
    

    def getValidAdSpots()
        return Array.new(0, nil)
    end
    

    def process(gameState)
    end
    

    def processDemo(state)
    end
    

    def setShowAds()
    end
    

    def setToggleAds(showAds)
    end
    

    def isShowAds()
        return true
    end
end

require "org/allbinary/direction/Direction"
require "org/allbinary/game/state/GameState"

