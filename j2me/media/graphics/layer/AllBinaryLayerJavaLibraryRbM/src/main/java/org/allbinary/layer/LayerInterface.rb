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

require "org/allbinary/game/identification/GroupInterfaceCompositeInterface"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/layer/NamedInterface"
require "org/allbinary/layer/PositionInterface"

module LayerInterface
    include NamedInterface
    include PaintableInterface
    include GroupInterfaceCompositeInterface
    include PositionInterface
    

    def getHeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getWidth()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getHalfHeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getHalfWidth()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getXP()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getYP()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getZP()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getX2()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getY2()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getZ2()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isVisible()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def moveDXYZ(dx, dy, dz)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setVisible(visible)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def implmentsTickableInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def implmentsCollidableInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def implmentsGameInputInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def implmentsArtificialIntelligenceCompositeInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getType()
        return super if defined?(super)
        raise NotImplementedError
    end
end

