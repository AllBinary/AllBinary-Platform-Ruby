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
require "org/allbinary/layer/relationship/RelativeLayerRelationship"

module ::Org; module Allbinary; module Layer; module Relationship

class MiddleRelativeLayerRelationship < RelativeLayerRelationship
    

    def initialize(layer)
        super(layer, ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(layer.getHalfWidth(), layer.getHalfHeight()), ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance())
    end
end

module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

end; end; end; end

