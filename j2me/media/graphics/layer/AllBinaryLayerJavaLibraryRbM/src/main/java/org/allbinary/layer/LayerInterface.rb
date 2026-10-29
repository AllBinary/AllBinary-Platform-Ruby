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
        raise NotImplementedError
    end
    

    def getWidth()
        raise NotImplementedError
    end
    

    def getHalfHeight()
        raise NotImplementedError
    end
    

    def getHalfWidth()
        raise NotImplementedError
    end
    

    def getXP()
        raise NotImplementedError
    end
    

    def getYP()
        raise NotImplementedError
    end
    

    def getZP()
        raise NotImplementedError
    end
    

    def getX2()
        raise NotImplementedError
    end
    

    def getY2()
        raise NotImplementedError
    end
    

    def getZ2()
        raise NotImplementedError
    end
    

    def isVisible()
        raise NotImplementedError
    end
    

    def moveDXYZ(dx, dy, dz)
        raise NotImplementedError
    end
    

    def setVisible(visible)
        raise NotImplementedError
    end
    

    def implmentsTickableInterface()
        raise NotImplementedError
    end
    

    def implmentsCollidableInterface()
        raise NotImplementedError
    end
    

    def implmentsGameInputInterface()
        raise NotImplementedError
    end
    

    def implmentsArtificialIntelligenceCompositeInterface()
        raise NotImplementedError
    end
    

    def getType()
        raise NotImplementedError
    end
end

