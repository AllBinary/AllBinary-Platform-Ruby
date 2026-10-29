# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class RTSLayerEvent < AllBinaryEventObject
    attr_accessor :rtsLayer

    def initialize_fields
        @rtsLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
    end
    

    def initialize(rtsLayer)
        super(rtsLayer)
        initialize_fields
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("RTSLayerEvent: \n")
        stringBuffer.append("RTSLayer: ")
        stringBuffer.append(self.getRtsLayer().to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getRtsLayer()
        return @rtsLayer
    end
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"

