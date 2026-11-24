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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class PreGameSelectorPaintable < ::Org::Allbinary::Graphics::Paint::InitUpdatePaintable
    attr_accessor :title, :canvasDrawLineString, :preGameScrollSelectionForm

    def jfields_org_allbinary_game_displayable_canvas_PreGameSelectorPaintable
        @title = nil unless instance_variable_defined?(:@title)
        @canvasDrawLineString = nil unless instance_variable_defined?(:@canvasDrawLineString)
        @preGameScrollSelectionForm = nil unless instance_variable_defined?(:@preGameScrollSelectionForm)
    end
    

    def initialize(title, preGameScrollSelectionForm)
        super()
        jfields_org_allbinary_game_displayable_canvas_PreGameSelectorPaintable
        @title = title
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @canvasDrawLineString = ::Org::Allbinary::Graphics::Draw::CanvasDrawLineString.new(displayInfo.getLastHalfWidth(), 0)
        @preGameScrollSelectionForm = preGameScrollSelectionForm
    end
    

    def update()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @canvasDrawLineString = ::Org::Allbinary::Graphics::Draw::CanvasDrawLineString.new(displayInfo.getLastHalfWidth(), 0)
    end
    java_overload :update, 0
    

    def paint(graphics)
        graphics.setColor(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE.to_i)
        @canvasDrawLineString.paint(graphics, @title, 0)
        self.getPreGameSelectionForm().paint(graphics)
    end
    java_overload :paint, 1
    

    def getPreGameSelectionForm()
        return @preGameScrollSelectionForm
    end
    java_overload :getPreGameSelectionForm, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Draw; autoload :CanvasDrawLineString, "org/allbinary/graphics/draw/CanvasDrawLineString" unless const_defined?(:CanvasDrawLineString, false); end; end; end; end
autoload :PreGameScrollSelectionForm, "org/allbinary/game/displayable/canvas/PreGameScrollSelectionForm" unless const_defined?(:PreGameScrollSelectionForm, false)

end; end; end; end; end

