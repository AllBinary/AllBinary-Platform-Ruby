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
require "org/allbinary/game/input/TestInputInterface"

module ::Org; module Allbinary; module Game; module Input

class TestInputExample
    include TestInputInterface
    attr_accessor :testValue

    def jfields_org_allbinary_game_input_TestInputExample
        @testValue = 0 unless instance_variable_defined?(:@testValue)
    end

    def initialize
        jfields_org_allbinary_game_input_TestInputExample
    end
    

    def up()
    end
    java_overload :up, 0
    

    def down()
    end
    java_overload :down, 0
    

    def left()
        @testValue += 1
    end
    java_overload :left, 0
    

    def right()
        @testValue -= 1
    end
    java_overload :right, 0
    

    def strafeLeft()
    end
    java_overload :strafeLeft, 0
    

    def strafeRight()
    end
    java_overload :strafeRight, 0
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

end; end; end; end

