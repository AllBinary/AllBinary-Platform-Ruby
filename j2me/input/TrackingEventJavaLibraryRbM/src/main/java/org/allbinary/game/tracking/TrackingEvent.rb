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
# package org.allbinary.game.tracking

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class TrackingEvent < AllBinaryEventObject
    attr_accessor :layerInterface

    def initialize_fields
        @layerInterface = AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def initialize(allBinaryLayerInterface)
        super(allBinaryLayerInterface)
        initialize_fields
        if allBinaryLayerInterface != TrackingEventHandler.getInstance()
            self.setLayerInterface(allBinaryLayerInterface)
        end
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    

    def getLayerInterface()
        return @layerInterface
    end
    

    def setLayerInterface(layerInterface)
        @layerInterface = layerInterface
    end
    

    def setLayerInterfaceForCircularStaticPool(layerInterface)
        @layerInterface = layerInterface
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("TrackingEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(@layerInterface.to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/tracking/TrackingEventHandler"

