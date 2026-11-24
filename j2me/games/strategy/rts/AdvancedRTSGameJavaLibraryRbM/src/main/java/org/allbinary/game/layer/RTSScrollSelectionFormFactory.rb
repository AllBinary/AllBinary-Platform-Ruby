# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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


module ::Org; module Allbinary; module Game; module Layer

class RTSScrollSelectionFormFactory
    

    # throws Exception
    def self.getInstance(formLabel, items)
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        touchButtonLocationHelper = ::Org::Allbinary::Input::Motion::Button::TouchButtonLocationHelper.new()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        menuX = ::Org::Allbinary::Input::Motion::Button::CommonButtons.getInstance().STANDARD_BUTTON_SIZE + touchButtonLocationHelper.getColumnsRemainderHalf()
        width = displayInfo.getLastWidth() - (menuX * 2)
        menuRectangle = ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(menuX, 16), width, ::Org::Allbinary::Input::Motion::Button::CommonButtons.getInstance().STANDARD_BUTTON_SIZE)
        return ::Org::Allbinary::Graphics::Form::MultipleScrollSelectionHorizontalForm.createForm(formLabel, items, menuRectangle, ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().HORIZONTAL_FORM, 0, basicColorFactory.BLACK, basicColorFactory.WHITE)
    end
end

module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :MultipleScrollSelectionHorizontalForm, "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm" unless const_defined?(:MultipleScrollSelectionHorizontalForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper" unless const_defined?(:TouchButtonLocationHelper, false); end; end; end; end; end

end; end; end; end

