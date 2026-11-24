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
# package org.allbinary.game.layer.pickup


module ::Org; module Allbinary; module Game; module Layer; module Pickup

module PickedUpLayerInterfaceFactoryInterface
    

    def getPickedUpLayerType()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getIconLayer()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAnimationInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType" unless const_defined?(:PickedUpLayerType, false)

end; end; end; end; end

