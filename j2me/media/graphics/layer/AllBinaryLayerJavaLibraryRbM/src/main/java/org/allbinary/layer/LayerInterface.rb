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
# package org.allbinary.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/identification/GroupInterfaceCompositeInterface"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/layer/NamedInterface"
require "org/allbinary/layer/PositionInterface"

module ::Org; module Allbinary; module Layer

module LayerInterface
    include NamedInterface
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    include ::Org::Allbinary::Game::Identification::GroupInterfaceCompositeInterface
    include PositionInterface
    

    def getHeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getHeight, 0
    

    def getWidth()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getWidth, 0
    

    def getHalfHeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getHalfHeight, 0
    

    def getHalfWidth()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getHalfWidth, 0
    

    def getXP()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getXP, 0
    

    def getYP()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getYP, 0
    

    def getZP()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getZP, 0
    

    def getX2()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getX2, 0
    

    def getY2()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getY2, 0
    

    def getZ2()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getZ2, 0
    

    def isVisible()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isVisible, 0
    

    def moveDXYZ(dx, dy, dz)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :moveDXYZ, 3
    

    def setVisible(visible)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setVisible, 1
    

    def implmentsTickableInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :implmentsTickableInterface, 0
    

    def implmentsCollidableInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :implmentsCollidableInterface, 0
    

    def implmentsGameInputInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :implmentsGameInputInterface, 0
    

    def implmentsArtificialIntelligenceCompositeInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :implmentsArtificialIntelligenceCompositeInterface, 0
    

    def getType()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getType, 0
end

end; end; end

