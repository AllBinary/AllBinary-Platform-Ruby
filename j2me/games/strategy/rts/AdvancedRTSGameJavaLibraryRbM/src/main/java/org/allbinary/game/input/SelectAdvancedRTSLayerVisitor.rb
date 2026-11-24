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

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/visitor/Visitor"

module ::Org; module Allbinary; module Game; module Input

class SelectAdvancedRTSLayerVisitor < ::Org::Allbinary::Logic::Util::Visitor::Visitor
    attr_accessor :selectedRTSLayersPlayerGameInput

    def jfields_org_allbinary_game_input_SelectAdvancedRTSLayerVisitor
        @selectedRTSLayersPlayerGameInput = nil unless instance_variable_defined?(:@selectedRTSLayersPlayerGameInput)
    end
    

    def initialize(selectedRTSLayersPlayerGameInput)
        super()
        jfields_org_allbinary_game_input_SelectAdvancedRTSLayerVisitor
        @selectedRTSLayersPlayerGameInput = selectedRTSLayersPlayerGameInput
    end
    

    def visit(anyType)
        selectedLayer = anyType
        if selectedLayer != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance() && selectedLayer.getType() == ::Org::Allbinary::Game::Layer::Building::BuildingLayer.getStaticType()
            rtsGameLayer = selectedLayer
            assignWaypointsUtil = ::Org::Allbinary::Game::Input::Form::AssignWaypointsUtil.getInstance()
            list = @selectedRTSLayersPlayerGameInput.getSelectedBasicArrayList()
            currentRTSLayer = nil
            unitLayer = nil
            (list.size() - 1).step(0, -(1)) do |index|
                currentRTSLayer = list.get(index)
                if currentRTSLayer.getType() == ::Org::Allbinary::Game::Layer::Unit::UnitLayer.getStaticType()
                    unitLayer = currentRTSLayer
                    unitLayer.setParentLayer(rtsGameLayer)
                    assignWaypointsUtil.set(unitLayer, rtsGameLayer)
                end
            end
        end
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Game; module Input; module Form; autoload :AssignWaypointsUtil, "org/allbinary/game/input/form/AssignWaypointsUtil" unless const_defined?(:AssignWaypointsUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; autoload :BuildingLayer, "org/allbinary/game/layer/building/BuildingLayer" unless const_defined?(:BuildingLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Unit; autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :SelectedRTSLayersPlayerGameInput, "org/allbinary/game/input/SelectedRTSLayersPlayerGameInput" unless const_defined?(:SelectedRTSLayersPlayerGameInput, false)

end; end; end; end

