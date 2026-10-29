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
# package org.allbinary.game.input.form

require "org/allbinary/game/input/form/RTSFormInput"

class TechRTSFormInput < RTSFormInput
    attr_accessor :EVENT, :noMoneyGameNotificationEvent

    def initialize_fields
        @EVENT = AllBinaryEventObject.new(self)
        @noMoneyGameNotificationEvent = nil
    end
    

    def initialize(groupInterface)
        super(groupInterface)
        initialize_fields
        basicColorFactory = BasicColorFactory.getInstance()
        @noMoneyGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NO_MONEY, SmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, itemIndex)
        self.class.superclass.instance_method(:process).bind(self).call(layerManager)
        commonStrings = CommonStrings.getInstance()
        stringMaker = StringMaker.new()
        technologyRTSInterfaceImageItem = item
        rtsInterface = technologyRTSInterfaceImageItem.getRtsInterface()
        @logUtil.putF(stringMaker.append("isUpgradeable: ").appendboolean(rtsInterface.isUpgradeable()).to_s, self, commonStrings.PROCESS)
        if rtsInterface.isUpgradeable()
            cost = rtsInterface.getUpgradeCost()
            capital = rtsPlayerLayerInterface.getCapital()
            stringMaker.delete(0, stringMaker.length())
            @logUtil.putF(stringMaker.appendint(cost).append("<=").appendint((capital.getTotalMoney()).to_i).to_s, self, commonStrings.PROCESS)
            if cost <= capital.getTotalMoney()
                rtsPlayerLayerInterface.add(BuildingSound.getInstance())
                capital.removeMoney(cost)
                rtsInterface.upgrade()
                technologyRTSInterfaceImageItem.update()
                TechEventHandler.getInstance().fireEvent(@EVENT)
            else
                rtsPlayerLayerInterface.add(ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
                end
            end
        end
    end
end

require "org/allbinary/game/layer/RTSGameStrings"
require "org/allbinary/game/layer/RTSInterface"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/TechnologyRTSInterfaceImageItem"
require "org/allbinary/game/layer/capital/Capital"
require "org/allbinary/game/rts/technology/event/TechEventHandler"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/media/audio/BuildingSound"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"

