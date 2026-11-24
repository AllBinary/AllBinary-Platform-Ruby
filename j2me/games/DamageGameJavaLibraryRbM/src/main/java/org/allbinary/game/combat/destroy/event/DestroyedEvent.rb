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
# package org.allbinary.game.combat.destroy.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event

class DestroyedEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :allBinaryGameCanvas, :allBinaryLayerInterface

    def jfields_org_allbinary_game_combat_destroy_event_DestroyedEvent
        @allBinaryGameCanvas = ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvas.getInstance()
        @allBinaryLayerInterface = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def initialize(combatGameCanvas)
        super(DestroyedEventHandler.getInstance())
        jfields_org_allbinary_game_combat_destroy_event_DestroyedEvent
        self.setAllBinaryGameCanvas(combatGameCanvas)
    end
    

    def getAllBinaryGameCanvas()
        return @allBinaryGameCanvas
    end
    java_overload :getAllBinaryGameCanvas, 0
    

    def getLayerInterface()
        return @allBinaryLayerInterface
    end
    java_overload :getLayerInterface, 0
    

    def setAllBinaryGameCanvas(allBinaryGameCanvas)
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    java_overload :setAllBinaryGameCanvas, 1
    

    def setLayerInterfaceForCircularStaticPool(allBinaryLayerInterface)
        @allBinaryLayerInterface = allBinaryLayerInterface
    end
    java_overload :setLayerInterfaceForCircularStaticPool, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("DestroyedEvent: \n")
        stringBuffer.append("AllBinaryLayerInterface: ")
        stringBuffer.append(@allBinaryLayerInterface.to_s)
        stringBuffer.append("\nAllBinaryGameCanvas: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getAllBinaryGameCanvas()))
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :NullGameCanvas, "org/allbinary/game/displayable/canvas/NullGameCanvas" unless const_defined?(:NullGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :DestroyedEventHandler, "org/allbinary/game/combat/destroy/event/DestroyedEventHandler" unless const_defined?(:DestroyedEventHandler, false)

end; end; end; end; end; end

