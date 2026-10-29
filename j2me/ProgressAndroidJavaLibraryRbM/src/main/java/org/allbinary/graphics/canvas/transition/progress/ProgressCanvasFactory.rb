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
# package org.allbinary.graphics.canvas.transition.progress


class ProgressCanvasFactory
    

    def self.getInstance()
        if ProgressCanvasFactory::PROGRESS_FORM_SCREEN == NullUtil.getInstance().NULL_OBJECT
            ProgressCanvasFactory::PROGRESS_FORM_SCREEN = AndroidBasicTitleProgressBar.new(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        end
        return ProgressCanvasFactory::PROGRESS_FORM_SCREEN
    end
    

    def self.getLazyInstance()
        return NullPaintable.getInstance()
    end
end

require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/graphics/canvas/transition/progress/AndroidBasicTitleProgressBar"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

class ProgressCanvasFactory
    PROGRESS_FORM_SCREEN = NullUtil.getInstance().NULL_OBJECT
end

