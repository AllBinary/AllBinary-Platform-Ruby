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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/StatePaintable"

class BasicGameDemoPaintable < StatePaintable
    attr_accessor :mainDemoStatePaintable, :ownershipPaintable, :helpPaintableInterface, :currentStatePaintable

    def initialize_fields
        @mainDemoStatePaintable = nil
        @ownershipPaintable = nil
        @helpPaintableInterface = nil
        @currentStatePaintable = NullPaintable.getInstance()
    end
    

    def initialize(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        super()
        initialize_fields
        @mainDemoStatePaintable = mainDemoStatePaintable
        self.setCurrentStatePaintable(NullPaintable.getInstance())
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
    

    def paint(graphics)
        self.getCurrentStatePaintable().paint(graphics)
    end
    

    def getHelpPaintableInterface()
        return @helpPaintableInterface
    end
    

    def setCurrentStatePaintable(currentStatePaintable)
        @currentStatePaintable = currentStatePaintable
    end
    

    def getCurrentStatePaintable()
        return @currentStatePaintable
    end
    

    def getMainDemoStatePaintable()
        return @mainDemoStatePaintable
    end
end

require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"

