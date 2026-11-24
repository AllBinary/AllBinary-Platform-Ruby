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
require "org/allbinary/graphics/color/ColorChangeListener"
require "org/allbinary/game/paint/BasicGameDemoPaintable"

module ::Org; module Allbinary; module Game; module Paint

class GameScrollMenuPaintable < BasicGameDemoPaintable
    include ::Org::Allbinary::Graphics::Color::ColorChangeListener
    

    def initialize(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor)
        super(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        self.setColor(basicColor)
        ::Org::Allbinary::Graphics::Color::ColorChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    def setState(state)
        self.setCurrentStatePaintable(self.getMainDemoStatePaintable())
    end
    java_overload :setState, 1
    

    def onEvent(eventObject)
    end
    java_overload :onEvent, 1
    

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
    java_overload :setColor, 1
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorChangeEventHandler, "org/allbinary/graphics/color/ColorChangeEventHandler" unless const_defined?(:ColorChangeEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormPaintable, "org/allbinary/graphics/form/FormPaintable" unless const_defined?(:FormPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABStringComponent, "org/allbinary/graphics/form/item/ABStringComponent" unless const_defined?(:ABStringComponent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABTextItem, "org/allbinary/graphics/form/item/ABTextItem" unless const_defined?(:ABTextItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :MainGameDemoStatePaintable, "org/allbinary/game/paint/MainGameDemoStatePaintable" unless const_defined?(:MainGameDemoStatePaintable, false)

end; end; end; end

