# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/WaypointPathRunnableBase"

module ::Org; module Allbinary; module Game; module Layer

class WaypointPathRunnable < WaypointPathRunnableBase
    attr_accessor :logUtil

    def jfields_org_allbinary_game_layer_WaypointPathRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_WaypointPathRunnable
    end
    

    def run()
        begin
            @pathFindingLayer.getWaypointRunnableLogHelper().start(@pathFindingLayer)
            waypointBehavior = @pathFindingLayer.getWaypointBehavior()
            geographicMapCellPosition = @pathFindingLayer.getCurrentGeographicMapCellPosition()
            if geographicMapCellPosition == nil
                raise StandardError.new("Should never be running here")
            end
            waypointBehavior.setWaypointPathsList(@targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsListRunnable(geographicMapCellPosition))
            @pathFindingLayer.getWaypointRunnableLogHelper().end_(@pathFindingLayer)
            sleep((15 + (@priorityP * 2)) / 1000.0)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
        end
    end
    java_overload :run, 0
    

    def isDone()
        return true
    end
    java_overload :isDone, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false)
require "java/lang/Thread"

end; end; end; end

