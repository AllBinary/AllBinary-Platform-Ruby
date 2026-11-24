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
# package org.allbinary.game.part


module ::Org; module Allbinary; module Game; module Part

module PartFactoryInterface
    

    # throws Exception
    def getInstance(sourceLayerInterface, relativeRelationship)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :PartInterface, "org/allbinary/game/part/PartInterface" unless const_defined?(:PartInterface, false)

end; end; end; end

