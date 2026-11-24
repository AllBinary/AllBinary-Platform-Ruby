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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/RelativeRelationship"

module ::Org; module Allbinary; module Layer; module Relationship

class RelativeLayerRelationship < ::Org::Allbinary::Graphics::RelativeRelationship
    attr_accessor :layer

    def jfields_org_allbinary_layer_relationship_RelativeLayerRelationship
        @layer = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def initialize(layer, point, typesAllowedList)
        super(point, typesAllowedList)
        jfields_org_allbinary_layer_relationship_RelativeLayerRelationship
        @layer = layer
    end
    

    def getX()
        return @layer.getXP() + RelativeLayerRelationship.superclass.java_super_method(:getX, 0).bind(self).call()
    end
    java_overload :getX, 0
    

    def getY()
        return @layer.getYP() + RelativeLayerRelationship.superclass.java_super_method(:getY, 0).bind(self).call()
    end
    java_overload :getY, 0
    

    def getZ()
        return @layer.getZP() + RelativeLayerRelationship.superclass.java_super_method(:getZ, 0).bind(self).call()
    end
    java_overload :getZ, 0
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end

