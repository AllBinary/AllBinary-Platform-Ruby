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

autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :TouchFeatureFactory, "org/allbinary/game/configuration/feature/TouchFeatureFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem"
autoload :CommandCurrentSelectionForm, "org/allbinary/graphics/form/CommandCurrentSelectionForm"
autoload :FormType, "org/allbinary/graphics/form/FormType"
autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm"
autoload :ScrollSelectionFormNoneFactory, "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory"

