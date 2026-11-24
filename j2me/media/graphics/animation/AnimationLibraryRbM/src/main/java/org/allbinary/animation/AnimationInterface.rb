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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/LocationPaintableInterface"

module ::Org; module Allbinary; module Animation

module AnimationInterface
    include ::Org::Allbinary::Graphics::Paint::LocationPaintableInterface
    

    # throws Exception
    def nextFrame()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :nextFrame, 0
    

    def paintThreedXYZ(graphics, x, y, z)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :paintThreedXYZ, 4
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

end; end; end

