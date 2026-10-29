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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/input/TestInputInterface"

class TestInputExample
    include TestInputInterface
    attr_accessor :testValue

    def initialize_fields
        @testValue = 0
    end

    def initialize
        initialize_fields
    end
    

    def up()
    end
    

    def down()
    end
    

    def left()
        @testValue += 1
    end
    

    def right()
        @testValue -= 1
    end
    

    def strafeLeft()
    end
    

    def strafeRight()
    end
    

    def paint(graphics)
    end
    

    def paintThreed(graphics)
    end
end

