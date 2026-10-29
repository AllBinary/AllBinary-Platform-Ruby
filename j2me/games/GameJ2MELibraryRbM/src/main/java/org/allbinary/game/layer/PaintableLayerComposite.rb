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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/Paintable"

class PaintableLayerComposite < Paintable
    attr_accessor :paintableArray

    def initialize_fields
        @paintableArray = nil
    end
    

    def initialize(paintableArray)
        super()
        initialize_fields
        @paintableArray = paintableArray
    end
    

    def paint(graphics)
        index = @paintableArray.length
        while (index -= 1) >= 0
            @paintableArray[index].paint(graphics)
        end
    end
    

    def paintThreed(graphics)
        paintableInterface = nil
        index = @paintableArray.length
        while (index -= 1) >= 0
            paintableInterface = @paintableArray[index]
            paintableInterface.paintThreed(graphics)
        end
    end
end

require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/layer/Layer"

