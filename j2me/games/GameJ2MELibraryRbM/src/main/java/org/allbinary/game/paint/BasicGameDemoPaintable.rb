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
# package org.allbinary.game.paint

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/StatePaintable"

module ::Org; module Allbinary; module Game; module Paint

class BasicGameDemoPaintable < ::Org::Allbinary::Graphics::Paint::StatePaintable
    attr_accessor :mainDemoStatePaintable, :ownershipPaintable, :helpPaintableInterface, :currentStatePaintable

    def jfields_org_allbinary_game_paint_BasicGameDemoPaintable
        @mainDemoStatePaintable = nil unless instance_variable_defined?(:@mainDemoStatePaintable)
        @ownershipPaintable = nil unless instance_variable_defined?(:@ownershipPaintable)
        @helpPaintableInterface = nil unless instance_variable_defined?(:@helpPaintableInterface)
        @currentStatePaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end
    

    def initialize(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        super()
        jfields_org_allbinary_game_paint_BasicGameDemoPaintable
        @mainDemoStatePaintable = mainDemoStatePaintable
        self.setCurrentStatePaintable(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
        @ownershipPaintable = ownershipPaintable
        @helpPaintableInterface = helpPaintableInterface
    end
    

    def setState(state)
        if state == 0
            self.setCurrentStatePaintable(self.getMainDemoStatePaintable())
        elsif state == 1
            self.setCurrentStatePaintable(@helpPaintableInterface)
        else
            self.setCurrentStatePaintable(@ownershipPaintable)
        end
    end
    java_overload :setState, 1
    

    def paint(graphics)
        self.getCurrentStatePaintable().paint(graphics)
    end
    java_overload :paint, 1
    

    def getHelpPaintableInterface()
        return @helpPaintableInterface
    end
    java_overload :getHelpPaintableInterface, 0
    

    def setCurrentStatePaintable(currentStatePaintable)
        @currentStatePaintable = currentStatePaintable
    end
    java_overload :setCurrentStatePaintable, 1
    

    def getCurrentStatePaintable()
        return @currentStatePaintable
    end
    java_overload :getCurrentStatePaintable, 0
    

    def getMainDemoStatePaintable()
        return @mainDemoStatePaintable
    end
    java_overload :getMainDemoStatePaintable, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end

end; end; end; end

