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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

class PreGameSelectorPaintable < InitUpdatePaintable
    attr_accessor :title, :canvasDrawLineString, :preGameScrollSelectionForm

    def initialize_fields
        @title = nil
        @canvasDrawLineString = nil
        @preGameScrollSelectionForm = nil
    end
    

    def initialize(title, preGameScrollSelectionForm)
        super()
        initialize_fields
        @title = title
        displayInfo = DisplayInfoSingleton.getInstance()
        @canvasDrawLineString = CanvasDrawLineString.new(displayInfo.getLastHalfWidth(), 0)
        @preGameScrollSelectionForm = preGameScrollSelectionForm
    end
    

    def update()
        displayInfo = DisplayInfoSingleton.getInstance()
        @canvasDrawLineString = CanvasDrawLineString.new(displayInfo.getLastHalfWidth(), 0)
    end
    

    def paint(graphics)
        graphics.setColor(BasicColorFactory.getInstance().WHITE.to_i)
        @canvasDrawLineString.paint(graphics, @title, 0)
        self.getPreGameSelectionForm().paint(graphics)
    end
    

    def getPreGameSelectionForm()
        return @preGameScrollSelectionForm
    end
end

require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/draw/CanvasDrawLineString"
require "org/allbinary/game/displayable/canvas/PreGameScrollSelectionForm"

