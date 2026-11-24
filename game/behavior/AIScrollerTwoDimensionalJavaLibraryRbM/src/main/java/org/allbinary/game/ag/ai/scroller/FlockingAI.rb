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
# package org.allbinary.game.ag.ai.scroller

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Scroller

class FlockingAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :allowedDistance

    def jfields_org_allbinary_game_ag_ai_scroller_FlockingAI
        @allowedDistance = nil unless instance_variable_defined?(:@allowedDistance)
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_scroller_FlockingAI
        allowedDistance = hashtable.get(BasePatrolAI::MAX_DISTANCE)
        @allowedDistance = allowedDistance.to_i
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        maxDistance = 0
        farAllbinaryLayer = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
        groupLayerManagerListener = ::Org::Allbinary::Game::Layer::Identification::GroupLayerManagerListener.getInstance()
        list = groupLayerManagerListener.getList(::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance().ENEMY)
        size = list.size()
        allBinaryLayer = nil
        ownerLayerInterface = nil
        (0...size).each do |index|
            allBinaryLayer = list.get(index)
            if allBinaryLayer.getType() != ::Org::Allbinary::Game::Layer::Weapon::WeaponLayer.getStaticType()
                distance = self.getXYDistance(allBinaryLayer)
                if distance > maxDistance
                    maxDistance = distance
                    farAllbinaryLayer = allBinaryLayer
                    if distance > @allowedDistance
                        break
                    end
                end
            end
        end
        if maxDistance > @allowedDistance
            if farAllbinaryLayer != ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
                ownerLayerInterface = self.getOwnerLayerInterface()
                if farAllbinaryLayer.getXP() < ownerLayerInterface.getXP()
                    self.processKeyAI(::Javax::Microedition::Lcdui::Canvas::LEFT)
                elsif farAllbinaryLayer.getXP() > ownerLayerInterface.getXP()
                    self.processKeyAI(::Javax::Microedition::Lcdui::Canvas::RIGHT)
                elsif farAllbinaryLayer.getYP() > ownerLayerInterface.getYP()
                    self.processKeyAI(::Javax::Microedition::Lcdui::Canvas::UP)
                elsif farAllbinaryLayer.getYP() < ownerLayerInterface.getYP()
                    self.processKeyAI(::Javax::Microedition::Lcdui::Canvas::DOWN)
                end
            end
        end
    end
    java_overload :processAI, 1
    

    def getXYDistance(allBinaryLayer)
        ownerLayerInterface = self.getOwnerLayerInterface()
        xTotalDistance = (allBinaryLayer.getXP() + allBinaryLayer.getHalfWidth()) - (ownerLayerInterface.getXP() + ownerLayerInterface.getHalfWidth())
        yTotalDistance = (allBinaryLayer.getYP() + allBinaryLayer.getHalfHeight()) - (ownerLayerInterface.getYP() + ownerLayerInterface.getHalfHeight())
        mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
        totalDistance = mathUtil.abs(xTotalDistance) + mathUtil.abs(yTotalDistance)
        return totalDistance
    end
    java_overload :getXYDistance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Identification; autoload :GroupLayerManagerListener, "org/allbinary/game/layer/identification/GroupLayerManagerListener" unless const_defined?(:GroupLayerManagerListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Weapon; autoload :WeaponLayer, "org/allbinary/game/layer/weapon/WeaponLayer" unless const_defined?(:WeaponLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :BasePatrolAI, "org/allbinary/game/ag/ai/scroller/BasePatrolAI" unless const_defined?(:BasePatrolAI, false)

end; end; end; end; end; end

