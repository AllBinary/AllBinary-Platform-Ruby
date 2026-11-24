# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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


module ::Org; module Allbinary; module Game; module Layer

class RTSLayerLogHelper
    

    def self.getInstance()
        return RTSLayerLogHelper.instance
    end
    

    def setClosestGeographicMapCellHistory(associatedAdvancedRTSGameLayer, pathsList)
    end
    

    def trackTo(associatedAdvancedRTSGameLayer, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason)
    end
    

    def turnTo(associatedAdvancedRTSGameLayer, dx, dy, angleInfo, angle, movementAngle, evading, targetAngle)
    end
    

    def doneMoving(associatedAdvancedRTSGameLayer)
    end
    

    def closeEnough(associatedAdvancedRTSGameLayer)
    end
    

    def movingLeft(associatedAdvancedRTSGameLayer)
    end
    

    def movingRight(associatedAdvancedRTSGameLayer)
    end
    

    def movingUp(associatedAdvancedRTSGameLayer)
    end
    

    def movingDown(associatedAdvancedRTSGameLayer)
    end
    

    def currentMoveEnded(associatedAdvancedRTSGameLayer)
    end
    

    def evade(associatedAdvancedRTSGameLayer)
    end
    

    def rotateLeft(associatedAdvancedRTSGameLayer)
    end
    

    def rotateRight(associatedAdvancedRTSGameLayer)
    end
    

    def handle(associatedAdvancedRTSGameLayer, movementAngle)
    end
    

    def noRotation(associatedAdvancedRTSGameLayer)
    end
    

    def notOnPath(associatedAdvancedRTSGameLayer, geographicMapCellHistory, currentGeographicMapCellPosition, pathList)
    end

    def self.instance()
        RTSLayerLogHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RTSLayerLogHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RTSLayerLogHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSLayerLogHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :NamedAngle, "org/allbinary/math/NamedAngle" unless const_defined?(:NamedAngle, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)

begin
    RTSLayerLogHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

