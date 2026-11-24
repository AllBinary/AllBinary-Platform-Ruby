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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/special/SpecialGameInputInterface"

module ::Org; module Allbinary; module Game; module Layer; module Special

class SpecialGameInput
    include SpecialGameInputInterface
    

    # throws Exception
    def up()
    end
    java_overload :up, 0
    

    # throws Exception
    def down()
    end
    java_overload :down, 0
    

    # throws Exception
    def right()
    end
    java_overload :right, 0
    

    # throws Exception
    def left()
    end
    java_overload :left, 0
    

    # throws Exception
    def strafeLeft()
    end
    java_overload :strafeLeft, 0
    

    # throws Exception
    def strafeRight()
    end
    java_overload :strafeRight, 0
    

    # throws Exception
    def fire(layerManager, gameKeyEvent)
    end
    java_overload :fire, 2
    

    # throws Exception
    def special1(layerManager, gameKeyEvent)
    end
    java_overload :special1, 2
    

    # throws Exception
    def special2(layerManager, gameKeyEvent)
    end
    java_overload :special2, 2
    

    # throws Exception
    def special3(layerManager, gameKeyEvent)
    end
    java_overload :special3, 2
    

    # throws Exception
    def special4(layerManager, gameKeyEvent)
    end
    java_overload :special4, 2
    

    # throws Exception
    def special5(layerManager, gameKeyEvent)
    end
    java_overload :special5, 2
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end; end

