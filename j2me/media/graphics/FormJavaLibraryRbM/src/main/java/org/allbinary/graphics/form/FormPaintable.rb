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

class FormPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :form

    def jfields_org_allbinary_graphics_form_FormPaintable
        @form = nil unless instance_variable_defined?(:@form)
    end
    

    def initialize(form)
        super()
        jfields_org_allbinary_graphics_form_FormPaintable
        @form = form
    end
    

    def paint(graphics)
        @form.paint(graphics)
    end
    java_overload :paint, 1
    

    def getForm()
        return @form
    end
    java_overload :getForm, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
autoload :PaintableForm, "org/allbinary/graphics/form/PaintableForm" unless const_defined?(:PaintableForm, false)

end; end; end; end

