# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer.special

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/special/SpecialGameInputInterface"

class SpecialGameInput
    include SpecialGameInputInterface
    

    # throws Exception
    def up()
    end
    

    # throws Exception
    def down()
    end
    

    # throws Exception
    def right()
    end
    

    # throws Exception
    def left()
    end
    

    # throws Exception
    def strafeLeft()
    end
    

    # throws Exception
    def strafeRight()
    end
    

    # throws Exception
    def fire(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special1(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special2(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special3(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special4(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special5(layerManager, gameKeyEvent)
    end
    

    def paint(graphics)
    end
    

    def paintThreed(graphics)
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/layer/AllBinaryLayerManager"

