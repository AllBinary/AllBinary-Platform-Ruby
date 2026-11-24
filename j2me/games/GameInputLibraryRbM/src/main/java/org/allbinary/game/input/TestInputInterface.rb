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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Game; module Input

module TestInputInterface
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    

    def up()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :up, 0
    

    def down()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :down, 0
    

    def left()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :left, 0
    

    def right()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :right, 0
    

    def strafeLeft()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :strafeLeft, 0
    

    def strafeRight()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :strafeRight, 0
end

end; end; end; end

