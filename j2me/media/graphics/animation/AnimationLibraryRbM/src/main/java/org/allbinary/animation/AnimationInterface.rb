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
# package org.allbinary.animation

require "org/allbinary/graphics/paint/LocationPaintableInterface"

module AnimationInterface
    include LocationPaintableInterface
    

    # throws Exception
    def nextFrame()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"

