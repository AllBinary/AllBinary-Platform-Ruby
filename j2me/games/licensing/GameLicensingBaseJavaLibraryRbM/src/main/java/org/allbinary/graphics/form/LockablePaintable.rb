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
# package org.allbinary.graphics.form

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/form/ItemPaintable"

class LockablePaintable < ItemPaintable
    attr_accessor :animation, :lockedIndex

    def initialize_fields
        @animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance(0)
        @lockedIndex = nil
    end
    

    def initialize(lockedIndex)
        super()
        initialize_fields
        @lockedIndex = lockedIndex
    end
    

    def paint(graphics, currentIndex, x, y)
        if LockedUtil.getInstance().isLocked() && currentIndex >= self.getLockedIndex()
            self.getAnimation().paintXY(graphics, x, y)
        end
    end
    

    def getLockedIndex()
        return @lockedIndex
    end
    

    def getAnimation()
        return @animation
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/logic/system/security/licensing/LockedResources"
require "org/allbinary/logic/system/security/licensing/LockedUtil"

