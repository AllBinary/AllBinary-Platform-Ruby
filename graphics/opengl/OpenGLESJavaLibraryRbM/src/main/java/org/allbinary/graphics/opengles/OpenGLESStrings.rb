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
# package org.allbinary.graphics.opengles


module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLESStrings
    

    # throws Exception
    def set(gl)
        raise RuntimeError.new()
    end
    

    def initFont(gl, width, height)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def update(gl, width, height)
        raise RuntimeError.new()
    end
    

    def drawChar(gl, graphics, character, x, y, anchor)
        raise RuntimeError.new()
    end
    

    def drawChars(gl, graphics, data, offset, length, x, y, anchor)
        raise RuntimeError.new()
    end
    

    def drawString(gl, graphics, string, x, y, anchor)
        raise RuntimeError.new()
    end
    

    def drawSubstring(gl, graphics, string, offset, len, x, y, anchor)
        raise RuntimeError.new()
    end
    

    def charWidth(ch)
        raise RuntimeError.new()
    end
    

    def charsWidth(ch, offset, length)
        raise RuntimeError.new()
    end
    

    def stringWidth_j1(string)
        raise RuntimeError.new()
    end
    

    def stringWidth_j3(string, offset, len)
        raise RuntimeError.new()
    end

    def stringWidth(*java_overload_args)
        return stringWidth_j1(*java_overload_args) if java_overload_args.length == 1
        return stringWidth_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method stringWidth takes #{java_overload_args.length} arguments"
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

end; end; end; end

