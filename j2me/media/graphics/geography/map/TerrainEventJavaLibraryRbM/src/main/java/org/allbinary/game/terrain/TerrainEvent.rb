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

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class TerrainEvent < AllBinaryEventObject
    attr_accessor :basicTerrainInfo

    def initialize_fields
        @basicTerrainInfo = BasicTerrainInfo::NULL_BASIC_TERRAIN_INFO
    end
    

    def initialize(basicTerrainInfo)
        super(basicTerrainInfo)
        initialize_fields
        self.setBasicTerrainInfo(@basicTerrainInfo)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("TerrainEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(@basicTerrainInfo.to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getBasicTerrainInfo()
        return @basicTerrainInfo
    end
    

    def setBasicTerrainInfo(basicTerrainInfo)
        @basicTerrainInfo = basicTerrainInfo
    end
    

    def setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo)
        @basicTerrainInfo = basicTerrainInfo
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/terrain/BasicTerrainInfo"

