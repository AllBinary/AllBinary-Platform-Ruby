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
# package org.allbinary.game.displayable.canvas


class DemoCanvasProgressUtil
    

    def self.showProgress(demoCanvas)
        DemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas, false)
    end
    

    def self.showProgressOptionallyInTheBackground(demoCanvas, background)
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.startBackground(background)
        paintableArray = Array.new(2, nil)
        paintableArray[0] = progressCanvas
        paintableArray[1] = demoCanvas.getDefaultPaintableInterface()
        demoCanvas.setDefaultPaintableInterface(PaintableComposite.new(paintableArray))
        demoCanvas.setPaintableInterface(demoCanvas.getDefaultPaintableInterface())
    end
end

require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/graphics/paint/PaintableComposite"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/game/displayable/canvas/DemoCanvas"

