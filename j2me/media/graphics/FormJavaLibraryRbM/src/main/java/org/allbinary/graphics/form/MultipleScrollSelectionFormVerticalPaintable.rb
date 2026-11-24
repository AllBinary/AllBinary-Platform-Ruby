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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/ItemIndexPaintable"

module ::Org; module Allbinary; module Graphics; module Form

class MultipleScrollSelectionFormVerticalPaintable < ItemIndexPaintable
    attr_accessor :multipleScrollSelectionForm

    def jfields_org_allbinary_graphics_form_MultipleScrollSelectionFormVerticalPaintable
        @multipleScrollSelectionForm = nil unless instance_variable_defined?(:@multipleScrollSelectionForm)
    end
    

    def initialize(multipleScrollSelectionForm)
        super()
        jfields_org_allbinary_graphics_form_MultipleScrollSelectionFormVerticalPaintable
        @multipleScrollSelectionForm = multipleScrollSelectionForm
    end
    

    # throws Exception
    def paint(graphics, index, item, dx, dy)
        return @multipleScrollSelectionForm.paintVertical(graphics, index, item, dx, dy)
    end
    java_overload :paint, 5
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
autoload :MultipleScrollSelectionHorizontalForm, "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm" unless const_defined?(:MultipleScrollSelectionHorizontalForm, false)

end; end; end; end

