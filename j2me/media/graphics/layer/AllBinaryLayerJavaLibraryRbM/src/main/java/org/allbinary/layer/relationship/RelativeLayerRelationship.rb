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
# package org.allbinary.layer.relationship

require "org/allbinary/graphics/RelativeRelationship"

class RelativeLayerRelationship < RelativeRelationship
    attr_accessor :layer

    def initialize_fields
        @layer = AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def initialize(layer, point, typesAllowedList)
        super(point, typesAllowedList)
        initialize_fields
        @layer = layer
    end
    

    def getX()
        return @layer.getXP() + super()
    end
    

    def getY()
        return @layer.getYP() + super()
    end
    

    def getZ()
        return @layer.getZP() + super()
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/util/BasicArrayList"

