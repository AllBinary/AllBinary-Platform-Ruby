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

require "java/lang/JavaOverload"
require "org/allbinary/game/input/form/RTSFormInput"

module ::Org; module Allbinary; module Game; module Input; module Form

class TechRTSFormInput < RTSFormInput
    attr_accessor :EVENT, :noMoneyGameNotificationEvent

    def jfields_org_allbinary_game_input_form_TechRTSFormInput
        @EVENT = ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject.new(self)
        @noMoneyGameNotificationEvent = nil unless instance_variable_defined?(:@noMoneyGameNotificationEvent)
    end
    

    def initialize(groupInterface)
        super(groupInterface)
        jfields_org_allbinary_game_input_form_TechRTSFormInput
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @noMoneyGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NO_MONEY, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        TechRTSFormInput.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, itemIndex)
        TechRTSFormInput.superclass.java_super_method(:process, 1).bind(self).call(layerManager)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        technologyRTSInterfaceImageItem = item
        rtsInterface = technologyRTSInterfaceImageItem.getRtsInterface()
        @logUtil.putF(stringMaker.append("isUpgradeable: ").appendboolean(rtsInterface.isUpgradeable()).to_s, self, commonStrings.PROCESS)
        if rtsInterface.isUpgradeable()
            cost = rtsInterface.getUpgradeCost()
            capital = rtsPlayerLayerInterface.getCapital()
            stringMaker.delete(0, stringMaker.length())
            @logUtil.putF(stringMaker.appendint(cost).append("<=").appendint(((capital.getTotalMoney()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, commonStrings.PROCESS)
            if cost <= capital.getTotalMoney()
                rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::BuildingSound.getInstance())
                capital.removeMoney(cost)
                rtsInterface.upgrade()
                technologyRTSInterfaceImageItem.update()
                ::Org::Allbinary::Game::Rts::Technology::Event::TechEventHandler.getInstance().fireEvent(@EVENT)
            else
                rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
                end
            end
        end
    end
    java_overload :processGameSpecific, 5
end

module ::Org; module Allbinary; module Game; module Layer; autoload :RTSGameStrings, "org/allbinary/game/layer/RTSGameStrings" unless const_defined?(:RTSGameStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSInterface, "org/allbinary/game/layer/RTSInterface" unless const_defined?(:RTSInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :TechnologyRTSInterfaceImageItem, "org/allbinary/game/layer/TechnologyRTSInterfaceImageItem" unless const_defined?(:TechnologyRTSInterfaceImageItem, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; autoload :Capital, "org/allbinary/game/layer/capital/Capital" unless const_defined?(:Capital, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Rts; module Technology; module Event; autoload :TechEventHandler, "org/allbinary/game/rts/technology/event/TechEventHandler" unless const_defined?(:TechEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :BuildingSound, "org/allbinary/media/audio/BuildingSound" unless const_defined?(:BuildingSound, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound" unless const_defined?(:ErrorSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end

end; end; end; end; end

