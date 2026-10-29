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


class RTSScrollSelectionFormFactory
    

    # throws Exception
    def self.getInstance(formLabel, items)
        basicColorFactory = BasicColorFactory.getInstance()
        touchButtonLocationHelper = TouchButtonLocationHelper.new()
        displayInfo = DisplayInfoSingleton.getInstance()
        menuX = CommonButtons.getInstance().STANDARD_BUTTON_SIZE + touchButtonLocationHelper.getColumnsRemainderHalf()
        width = displayInfo.getLastWidth() - (menuX * 2)
        menuRectangle = Rectangle.new(PointFactory.getInstance().createXY(menuX, 16), width, CommonButtons.getInstance().STANDARD_BUTTON_SIZE)
        return MultipleScrollSelectionHorizontalForm.createForm(formLabel, items, menuRectangle, FormTypeFactory.getInstance().HORIZONTAL_FORM, 0, basicColorFactory.BLACK, basicColorFactory.WHITE)
    end
end

require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/form/FormTypeFactory"
require "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/input/motion/button/CommonButtons"
require "org/allbinary/input/motion/button/TouchButtonLocationHelper"

