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
# package org.allbinary.game.tracking

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Tracking

class TrackingEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :layerInterface

    def jfields_org_allbinary_game_tracking_TrackingEvent
        @layerInterface = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def initialize(allBinaryLayerInterface)
        super(allBinaryLayerInterface)
        jfields_org_allbinary_game_tracking_TrackingEvent
        if allBinaryLayerInterface != TrackingEventHandler.getInstance()
            self.setLayerInterface(allBinaryLayerInterface)
        end
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    java_overload :init, 1
    

    def getLayerInterface()
        return @layerInterface
    end
    java_overload :getLayerInterface, 0
    

    def setLayerInterface(layerInterface)
        @layerInterface = layerInterface
    end
    java_overload :setLayerInterface, 1
    

    def setLayerInterfaceForCircularStaticPool(layerInterface)
        @layerInterface = layerInterface
    end
    java_overload :setLayerInterfaceForCircularStaticPool, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("TrackingEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(@layerInterface.to_s)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false)

end; end; end; end

