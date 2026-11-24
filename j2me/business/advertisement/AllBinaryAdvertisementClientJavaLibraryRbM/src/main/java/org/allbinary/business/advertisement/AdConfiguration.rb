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


module ::Org; module Allbinary; module Business; module Advertisement

class AdConfiguration
    attr_accessor :INNERACTIVE, :LEADBOLT, :ADMOB

    def jfields_org_allbinary_business_advertisement_AdConfiguration
        @INNERACTIVE = nil unless instance_variable_defined?(:@INNERACTIVE)
        @LEADBOLT = nil unless instance_variable_defined?(:@LEADBOLT)
        @ADMOB = nil unless instance_variable_defined?(:@ADMOB)
    end
    

    def initialize(advertIdArray)
        jfields_org_allbinary_business_advertisement_AdConfiguration
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

module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end

end; end; end; end

