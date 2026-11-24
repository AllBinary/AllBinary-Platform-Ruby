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
require "org/allbinary/graphics/form/ItemIndexDx"

module ::Org; module Allbinary; module Graphics; module Form

class TempHorizontalItemIndexDx < ItemIndexDx
    attr_accessor :scrollCurrentSelectionForm

    def jfields_org_allbinary_graphics_form_TempHorizontalItemIndexDx
        @scrollCurrentSelectionForm = nil unless instance_variable_defined?(:@scrollCurrentSelectionForm)
    end
    

    def initialize(scrollCurrentSelectionForm)
        super()
        jfields_org_allbinary_graphics_form_TempHorizontalItemIndexDx
        @scrollCurrentSelectionForm = scrollCurrentSelectionForm
    end
    

    # throws Exception
    def getDx(index, item, dx, dy)
        return @scrollCurrentSelectionForm.getXTempHorizontalForm(index, item, dx, dy)
    end
    java_overload :getDx, 4
end

module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
autoload :ScrollCurrentSelectionForm, "org/allbinary/graphics/form/ScrollCurrentSelectionForm" unless const_defined?(:ScrollCurrentSelectionForm, false)

end; end; end; end

