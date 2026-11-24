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
# package org.allbinary.game.terrain

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Terrain

class TerrainEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :basicTerrainInfo

    def jfields_org_allbinary_game_terrain_TerrainEvent
        @basicTerrainInfo = BasicTerrainInfo::NULL_BASIC_TERRAIN_INFO
    end
    

    def initialize(basicTerrainInfo)
        super(basicTerrainInfo)
        jfields_org_allbinary_game_terrain_TerrainEvent
        self.setBasicTerrainInfo(@basicTerrainInfo)
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("TerrainEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(@basicTerrainInfo.to_s)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getBasicTerrainInfo()
        return @basicTerrainInfo
    end
    java_overload :getBasicTerrainInfo, 0
    

    def setBasicTerrainInfo(basicTerrainInfo)
        @basicTerrainInfo = basicTerrainInfo
    end
    java_overload :setBasicTerrainInfo, 1
    

    def setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo)
        @basicTerrainInfo = basicTerrainInfo
    end
    java_overload :setBasicTerrainInfoForCircularStaticPool, 1
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :BasicTerrainInfo, "org/allbinary/game/terrain/BasicTerrainInfo" unless const_defined?(:BasicTerrainInfo, false)

end; end; end; end

