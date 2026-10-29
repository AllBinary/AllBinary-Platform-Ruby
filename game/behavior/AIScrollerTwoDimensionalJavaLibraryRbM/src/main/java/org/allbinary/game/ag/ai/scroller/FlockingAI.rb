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

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ai/BasicAI"

class FlockingAI < BasicAI
    attr_accessor :allowedDistance

    def initialize_fields
        @allowedDistance = nil
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        allowedDistance = hashtable.get(BasePatrolAI::MAX_DISTANCE)
        @allowedDistance = allowedDistance.to_i
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        maxDistance = 0
        farAllbinaryLayer = AllBinaryLayer::NULL_ALLBINARY_LAYER
        groupLayerManagerListener = GroupLayerManagerListener.getInstance()
        list = groupLayerManagerListener.getList(BasicGroupFactory.getInstance().ENEMY)
        size = list.size()
        allBinaryLayer = nil
        ownerLayerInterface = nil
        (0...size).each do |index|
            allBinaryLayer = list.get(index)
            if allBinaryLayer.getType() != WeaponLayer.getStaticType()
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
            if farAllbinaryLayer != AllBinaryLayer::NULL_ALLBINARY_LAYER
                ownerLayerInterface = self.getOwnerLayerInterface()
                if farAllbinaryLayer.getXP() < ownerLayerInterface.getXP()
                    self.processKeyAI(Canvas::LEFT)
                elsif farAllbinaryLayer.getXP() > ownerLayerInterface.getXP()
                    self.processKeyAI(Canvas::RIGHT)
                elsif farAllbinaryLayer.getYP() > ownerLayerInterface.getYP()
                    self.processKeyAI(Canvas::UP)
                elsif farAllbinaryLayer.getYP() < ownerLayerInterface.getYP()
                    self.processKeyAI(Canvas::DOWN)
                end
            end
        end
    end
    

    def getXYDistance(allBinaryLayer)
        ownerLayerInterface = self.getOwnerLayerInterface()
        xTotalDistance = (allBinaryLayer.getXP() + allBinaryLayer.getHalfWidth()) - (ownerLayerInterface.getXP() + ownerLayerInterface.getHalfWidth())
        yTotalDistance = (allBinaryLayer.getYP() + allBinaryLayer.getHalfHeight()) - (ownerLayerInterface.getYP() + ownerLayerInterface.getHalfHeight())
        mathUtil = MathUtil.getInstance()
        totalDistance = mathUtil.abs(xTotalDistance) + mathUtil.abs(yTotalDistance)
        return totalDistance
    end
end

require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/layer/identification/GroupLayerManagerListener"
require "org/allbinary/game/layer/weapon/WeaponLayer"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/ag/ai/scroller/BasePatrolAI"

