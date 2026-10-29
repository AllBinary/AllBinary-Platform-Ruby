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

require "org/allbinary/graphics/form/ScrollCurrentSelectionForm"

class PreGameScrollSelectionForm < ScrollCurrentSelectionForm
    

    def initialize(title, items, formPaintableFactory, backgroundBasicColor, foregroundBasicColor)
        super(title, items, formPaintableFactory, 0, 3, false, backgroundBasicColor, foregroundBasicColor)
    end
    

    # throws Exception
    def init(rectangle)
        super(rectangle, FormTypeFactory.getInstance().TEMP_HORIZONTAL_FORM)
    end
end

require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/form/FormTypeFactory"
require "org/allbinary/graphics/form/ItemPaintableFactory"

