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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/Paintable"

class FormPaintable < Paintable
    attr_accessor :form

    def initialize_fields
        @form = nil
    end
    

    def initialize(form)
        super()
        initialize_fields
        @form = form
    end
    

    def paint(graphics)
        @form.paint(graphics)
    end
    

    def getForm()
        return @form
    end
end

require "org/allbinary/graphics/form/PaintableForm"

