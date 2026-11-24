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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/ItemPaintable"

module ::Org; module Allbinary; module Graphics; module Form

class LockablePaintable < ItemPaintable
    attr_accessor :animation, :lockedIndex

    def jfields_org_allbinary_graphics_form_LockablePaintable
        @animation = ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(::Org::Allbinary::Logic::System::Security::Licensing::LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance(0)
        @lockedIndex = nil unless instance_variable_defined?(:@lockedIndex)
    end
    

    def initialize(lockedIndex)
        super()
        jfields_org_allbinary_graphics_form_LockablePaintable
        @lockedIndex = lockedIndex
    end
    

    def paint(graphics, currentIndex, x, y)
        if ::Org::Allbinary::Logic::System::Security::Licensing::LockedUtil.getInstance().isLocked() && currentIndex >= self.getLockedIndex()
            self.getAnimation().paintXY(graphics, x, y)
        end
    end
    java_overload :paint, 4
    

    def getLockedIndex()
        return @lockedIndex
    end
    java_overload :getLockedIndex, 0
    

    def getAnimation()
        return @animation
    end
    java_overload :getAnimation, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedResources, "org/allbinary/logic/system/security/licensing/LockedResources" unless const_defined?(:LockedResources, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedUtil, "org/allbinary/logic/system/security/licensing/LockedUtil" unless const_defined?(:LockedUtil, false); end; end; end; end; end; end

end; end; end; end

