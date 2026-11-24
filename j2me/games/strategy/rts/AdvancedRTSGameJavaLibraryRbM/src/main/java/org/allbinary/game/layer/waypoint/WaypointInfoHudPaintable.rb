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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/layer/SelectionHudPaintable"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class WaypointInfoHudPaintable < ::Org::Allbinary::Game::Layer::SelectionHudPaintable
    attr_accessor :keyvalueDrawString, :rtsLayerP, :textLine2Y

    def jfields_org_allbinary_game_layer_waypoint_WaypointInfoHudPaintable
        @keyvalueDrawString = nil unless instance_variable_defined?(:@keyvalueDrawString)
        @rtsLayerP = ::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @textLine2Y = 0 unless instance_variable_defined?(:@textLine2Y)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_waypoint_WaypointInfoHudPaintable
        @keyvalueDrawString = ::Org::Allbinary::Graphics::Draw::KeyValueDrawString.new("Owner: ", @textX)
    end
    

    def updateMeasurement(graphics)
        WaypointInfoHudPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
        font = graphics.getFont()
        @textLine2Y = (@y + font.getHeight())
    end
    java_overload :updateMeasurement, 1
    

    def updateSelectionInfo()
        rtsLayer = @rtsLayerP
        self.setName(rtsLayer.getName())
        self.setAnimationInterface(rtsLayer.getVerticleBuildAnimationInterface())
        @keyvalueDrawString.update(rtsLayer.getParentLayer().getName())
    end
    java_overload :updateSelectionInfo, 0
    

    def setRtsLayer(rtsLayer)
        @rtsLayerP = rtsLayer
    end
    java_overload :setRtsLayer, 1
    

    def getRtsLayer()
        return @rtsLayerP
    end
    java_overload :getRtsLayer, 0
    

    def paint(graphics)
        WaypointInfoHudPaintable.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        @keyvalueDrawString.paint(graphics, @textLine2Y)
        self.getAnimationInterface().paintXY(graphics, @imageX, @y)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Draw; autoload :KeyValueDrawString, "org/allbinary/graphics/draw/KeyValueDrawString" unless const_defined?(:KeyValueDrawString, false); end; end; end; end

end; end; end; end; end

