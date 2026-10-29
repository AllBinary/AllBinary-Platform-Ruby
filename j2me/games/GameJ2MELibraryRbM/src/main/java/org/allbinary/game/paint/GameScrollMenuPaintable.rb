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

require "org/allbinary/graphics/color/ColorChangeListener"
require "org/allbinary/game/paint/BasicGameDemoPaintable"

class GameScrollMenuPaintable < BasicGameDemoPaintable
    include ColorChangeListener
    

    def initialize(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor)
        super(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        self.setColor(basicColor)
        ColorChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    def setState(state)
        self.setCurrentStatePaintable(self.getMainDemoStatePaintable())
    end
    

    def onEvent(eventObject)
    end
    

    def setColor(basicColor)
        mainGameDemoStatePaintable = self.getMainDemoStatePaintable()
        formPaintable = mainGameDemoStatePaintable.getMenuPaintableInterface()
        scrollSelectionForm = formPaintable.getForm()
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor)
        scrollSelectionForm.setButtonBasicColor(basicColor)
        item = nil
        stringComponent = nil
        (scrollSelectionForm.size() - 1).step(0, -(1)) do |index|
            item = scrollSelectionForm.get(index)
            stringComponent = item.getLabelStringComponent()
            if stringComponent != nil
                stringComponent.setForegroundBasicColor(basicColor)
            end
        end
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/ColorChangeEventHandler"
require "org/allbinary/graphics/form/FormPaintable"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/graphics/form/item/ABStringComponent"
require "org/allbinary/graphics/form/item/ABTextItem"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/game/paint/MainGameDemoStatePaintable"

