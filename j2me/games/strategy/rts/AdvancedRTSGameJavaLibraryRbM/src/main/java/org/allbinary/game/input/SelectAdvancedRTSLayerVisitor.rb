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
# package org.allbinary.game.input

require "org/allbinary/logic/util/visitor/Visitor"

class SelectAdvancedRTSLayerVisitor < Visitor
    attr_accessor :selectedRTSLayersPlayerGameInput

    def initialize_fields
        @selectedRTSLayersPlayerGameInput = nil
    end
    

    def initialize(selectedRTSLayersPlayerGameInput)
        super()
        initialize_fields
        @selectedRTSLayersPlayerGameInput = selectedRTSLayersPlayerGameInput
    end
    

    def visit(anyType)
        selectedLayer = anyType
        if selectedLayer != CollidableDestroyableDamageableLayer.getNullInstance() && selectedLayer.getType() == BuildingLayer.getStaticType()
            rtsGameLayer = selectedLayer
            assignWaypointsUtil = AssignWaypointsUtil.getInstance()
            list = @selectedRTSLayersPlayerGameInput.getSelectedBasicArrayList()
            currentRTSLayer = nil
            unitLayer = nil
            (list.size() - 1).step(0, -(1)) do |index|
                currentRTSLayer = list.get(index)
                if currentRTSLayer.getType() == UnitLayer.getStaticType()
                    unitLayer = currentRTSLayer
                    unitLayer.setParentLayer(rtsGameLayer)
                    assignWaypointsUtil.set(unitLayer, rtsGameLayer)
                end
            end
        end
        return NullUtil.getInstance().NULL_OBJECT
    end
end

require "org/allbinary/game/input/form/AssignWaypointsUtil"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/building/BuildingLayer"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/layer/unit/UnitLayer"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/input/SelectedRTSLayersPlayerGameInput"

