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
require "org/allbinary/game/layer/waypoint/Waypoint"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class WorkWaypoint < Waypoint
    

    def initialize(ownerLayer)
        super(ownerLayer, ::Org::Allbinary::Media::Audio::WorkSound.getInstance())
    end
    

    # throws Exception
    def visit(unitLayer)
        if unitLayer.getGroupInterface()[0] != @ownerLayer.getGroupInterface()[0]
            return
        end
        size = self.getConnectedWaypointList().size()
        if size > 0
            occupyList = @ownerLayer.getGeographicMapCellPositionArea().getOccupyingGeographicMapCellPositionList()
            outOfResources = true
            geologicalGeographicMapCellPosition = nil
            geologicalResource = nil
            index = occupyList.size()
            while (index -= 1) >= 0
                geologicalGeographicMapCellPosition = occupyList.get(index)
                geologicalResource = geologicalGeographicMapCellPosition.getGeologicalResource()
                if geologicalResource.getTotal() >= 1
                    outOfResources = false
                    maxResourceLoad = ((unitLayer.getMaxResourceLoad()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                    geologicalResource.remove(maxResourceLoad)
                    unitLayer.setLoad(maxResourceLoad)
                end
            end
            waypointInfoHudPaintable = @ownerLayer.getHudPaintable()
            if @ownerLayer == waypointInfoHudPaintable.getRtsLayer()
                waypointInfoHudPaintable.updateSelectionInfo()
            end
            if !outOfResources
                unitWaypointBehavior = unitLayer.getWaypointBehavior()
                rtsLayer = nil
                while self.getConnectedWaypointList().size() > 0
                    rtsLayer = self.getConnectedWaypointList().get(0)
                    if rtsLayer.isDestroyed()
                        self.getConnectedWaypointList().remove(rtsLayer)
                    else
                        unitWaypointBehavior.insertWaypoint(0, rtsLayer)
                        break
                    end
                end
            end
        end
    end
    java_overload :visit, 1
    

    def getType()
        return 2
    end
    java_overload :getType, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:ID, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(25))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WorkWaypoint"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ID].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Geological; module Resources; autoload :GeologicalGeographicMapCellPosition, "org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition" unless const_defined?(:GeologicalGeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Geological; module Resources; autoload :GeologicalResource, "org/allbinary/game/layer/geological/resources/GeologicalResource" unless const_defined?(:GeologicalResource, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Unit; autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Unit; autoload :UnitWaypointBehavior, "org/allbinary/game/layer/unit/UnitWaypointBehavior" unless const_defined?(:UnitWaypointBehavior, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :WorkSound, "org/allbinary/media/audio/WorkSound" unless const_defined?(:WorkSound, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
autoload :WaypointInfoHudPaintable, "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable" unless const_defined?(:WaypointInfoHudPaintable, false)

begin
    WorkWaypoint.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

