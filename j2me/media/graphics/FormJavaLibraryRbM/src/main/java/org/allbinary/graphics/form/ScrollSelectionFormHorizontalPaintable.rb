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

class ScrollSelectionFormHorizontalPaintable < ItemIndexPaintable
    attr_accessor :scrollSelectionForm

    def jfields_org_allbinary_graphics_form_ScrollSelectionFormHorizontalPaintable
        @scrollSelectionForm = nil unless instance_variable_defined?(:@scrollSelectionForm)
    end
    

    def initialize(scrollSelectionForm)
        super()
        jfields_org_allbinary_graphics_form_ScrollSelectionFormHorizontalPaintable
        @scrollSelectionForm = scrollSelectionForm
    end
    

    # throws Exception
    def paint(graphics, index, item, dx, dy)
        return @scrollSelectionForm.paintItemHorizontal(graphics, index, item, dx, dy)
    end
    java_overload :paint, 5
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false)

end; end; end; end

