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
# package org.allbinary.layer.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Layer; module Event

class LayerManagerEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :layerInterface, :crud

    def jfields_org_allbinary_layer_event_LayerManagerEvent
        @layerInterface = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
        @crud = nil unless instance_variable_defined?(:@crud)
    end
    

    def initialize(layerManager, crud)
        super(layerManager)
        jfields_org_allbinary_layer_event_LayerManagerEvent
        @crud = crud
    end
    

    def getLayerInterface()
        return @layerInterface
    end
    java_overload :getLayerInterface, 0
    

    def setLayerInterface(layerInterface)
        @layerInterface = layerInterface
    end
    java_overload :setLayerInterface, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("LayerManagerEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(self.getLayerInterface().to_s)
        stringBuffer.append("\nCRUD: ")
        stringBuffer.append(@crud)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerManager, "org/allbinary/layer/LayerManager" unless const_defined?(:LayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end

