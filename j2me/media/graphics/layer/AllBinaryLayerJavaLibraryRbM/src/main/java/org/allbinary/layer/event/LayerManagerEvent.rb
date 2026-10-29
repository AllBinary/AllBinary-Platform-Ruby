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

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class LayerManagerEvent < AllBinaryEventObject
    attr_accessor :layerInterface, :crud

    def initialize_fields
        @layerInterface = AllBinaryLayer::NULL_ALLBINARY_LAYER
        @crud = nil
    end
    

    def initialize(layerManager, crud)
        super(layerManager)
        initialize_fields
        @crud = crud
    end
    

    def getLayerInterface()
        return @layerInterface
    end
    

    def setLayerInterface(layerInterface)
        @layerInterface = layerInterface
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("LayerManagerEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(self.getLayerInterface().to_s)
        stringBuffer.append("\nCRUD: ")
        stringBuffer.append(@crud)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/LayerManager"
require "org/allbinary/logic/string/StringMaker"

