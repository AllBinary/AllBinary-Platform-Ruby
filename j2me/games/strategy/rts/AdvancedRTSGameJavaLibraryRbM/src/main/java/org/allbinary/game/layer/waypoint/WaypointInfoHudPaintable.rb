# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.waypoint

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/SelectionHudPaintable"

class WaypointInfoHudPaintable < SelectionHudPaintable
    attr_accessor :keyvalueDrawString, :rtsLayerP, :textLine2Y

    def initialize_fields
        @keyvalueDrawString = nil
        @rtsLayerP = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @textLine2Y = 0
    end
    

    def initialize()
        super()
        initialize_fields
        @keyvalueDrawString = KeyValueDrawString.new("Owner: ", @textX)
    end
    

    def updateMeasurement(graphics)
        super(graphics)
        font = graphics.getFont()
        @textLine2Y = (@y + font.getHeight())
    end
    

    def updateSelectionInfo()
        rtsLayer = @rtsLayerP
        self.setName(rtsLayer.getName())
        self.setAnimationInterface(rtsLayer.getVerticleBuildAnimationInterface())
        @keyvalueDrawString.update(rtsLayer.getParentLayer().getName())
    end
    

    def setRtsLayer(rtsLayer)
        @rtsLayerP = rtsLayer
    end
    

    def getRtsLayer()
        return @rtsLayerP
    end
    

    def paint(graphics)
        super(graphics)
        @keyvalueDrawString.paint(graphics, @textLine2Y)
        self.getAnimationInterface().paintXY(graphics, @imageX, @y)
    end
end

require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/graphics/draw/KeyValueDrawString"

