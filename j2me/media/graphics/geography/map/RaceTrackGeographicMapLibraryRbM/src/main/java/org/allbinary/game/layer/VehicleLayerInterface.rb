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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerInterface"
require "org/allbinary/game/layer/VehiclePropertiesCompositeInterface"

module ::Org; module Allbinary; module Game; module Layer

module VehicleLayerInterface
    include ::Org::Allbinary::Layer::LayerInterface
    include VehiclePropertiesCompositeInterface
    

    def getGameKeyEventList()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getGameKeyEventList, 0
    

    def getSpeedBasicDecimal()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getSpeedBasicDecimal, 0
    

    def isReadyForExplosion()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isReadyForExplosion, 0
    

    def getRotationAnimationInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getRotationAnimationInterface, 0
    

    def setRotationAnimationInterface(animationInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setRotationAnimationInterface, 1
    

    def isDestroyed()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isDestroyed, 0
    

    def isFinish()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isFinish, 0
    

    def getFinalPosition()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getFinalPosition, 0
    

    # throws Exception
    def handleFinish()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :handleFinish, 0
    

    def getGeographicMapCellPositionTracking()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getGeographicMapCellPositionTracking, 0
    

    def getGeographicMapCellHistoryArray()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getGeographicMapCellHistoryArray, 0
    

    def setGeographicMapCellHistoryArray(geographicMapCellHistory)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setGeographicMapCellHistoryArray, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation" unless const_defined?(:RotationAnimation, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionTracking, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking" unless const_defined?(:GeographicMapCellPositionTracking, false); end; end; end; end; end; end

end; end; end; end

