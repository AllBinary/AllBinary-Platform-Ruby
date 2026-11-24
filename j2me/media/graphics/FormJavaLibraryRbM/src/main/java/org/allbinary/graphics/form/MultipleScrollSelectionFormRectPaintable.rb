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
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Graphics; module Form

class MultipleScrollSelectionFormRectPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :multipleScrollSelectionForm

    def jfields_org_allbinary_graphics_form_MultipleScrollSelectionFormRectPaintable
        @multipleScrollSelectionForm = nil unless instance_variable_defined?(:@multipleScrollSelectionForm)
    end
    

    def initialize(multipleScrollSelectionForm)
        super()
        jfields_org_allbinary_graphics_form_MultipleScrollSelectionFormRectPaintable
        @multipleScrollSelectionForm = multipleScrollSelectionForm
    end
    

    def paint(graphics)
        @multipleScrollSelectionForm.fillRect(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
autoload :MultipleScrollSelectionHorizontalForm, "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm" unless const_defined?(:MultipleScrollSelectionHorizontalForm, false)

end; end; end; end

