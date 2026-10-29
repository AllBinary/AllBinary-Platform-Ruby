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
# package org.allbinary.graphics.form


class CommandCurrentSelectionFormFactory
    

    # throws Exception
    def self.getInstance(title, items, rectangle, formType, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        if Features.getInstance().isFeature(TouchFeatureFactory.getInstance().TOUCH_ENABLED)
            scrollSelectionForm = CommandCurrentSelectionForm.new(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
            scrollSelectionForm.init(rectangle, formType)
            return scrollSelectionForm
        else
            return ScrollSelectionFormNoneFactory.getInstance()
        end
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/TouchFeatureFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/form/CommandCurrentSelectionForm"
require "org/allbinary/graphics/form/FormType"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory"

