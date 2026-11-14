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

require "org/allbinary/layer/relationship/RelativeLayerRelationship"

class MiddleRelativeLayerRelationship < RelativeLayerRelationship
    

    def initialize(layer)
        super(layer, PointFactory.getInstance().createXY(layer.getHalfWidth(), layer.getHalfHeight()), BasicArrayListUtil.getInstance().getImmutableInstance())
    end
end

autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"

