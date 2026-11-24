# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Layer

class RTSLayerEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :rtsLayer

    def jfields_org_allbinary_game_layer_RTSLayerEvent
        @rtsLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
    end
    

    def initialize(rtsLayer)
        super(rtsLayer)
        jfields_org_allbinary_game_layer_RTSLayerEvent
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("RTSLayerEvent: \n")
        stringBuffer.append("RTSLayer: ")
        stringBuffer.append(self.getRtsLayer().to_s)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getRtsLayer()
        return @rtsLayer
    end
    java_overload :getRtsLayer, 0
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end
    java_overload :setRtsLayer, 1
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false)
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)

end; end; end; end

