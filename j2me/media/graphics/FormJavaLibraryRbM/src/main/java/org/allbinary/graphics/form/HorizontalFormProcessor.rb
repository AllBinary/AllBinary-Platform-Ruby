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
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Graphics; module Form

class HorizontalFormProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :scrollCurrentSelectionForm

    def jfields_org_allbinary_graphics_form_HorizontalFormProcessor
        @scrollCurrentSelectionForm = nil unless instance_variable_defined?(:@scrollCurrentSelectionForm)
    end
    

    def initialize(scrollCurrentSelectionForm)
        super()
        jfields_org_allbinary_graphics_form_HorizontalFormProcessor
        @scrollCurrentSelectionForm = scrollCurrentSelectionForm
    end
    

    # throws Exception
    def process()
        @scrollCurrentSelectionForm.processHorizontalForm()
        @scrollCurrentSelectionForm.processor = ::Org::Allbinary::Canvas::Processor.getInstance()
    end
    java_overload :process, 0
end

autoload :ScrollCurrentSelectionForm, "org/allbinary/graphics/form/ScrollCurrentSelectionForm" unless const_defined?(:ScrollCurrentSelectionForm, false)

end; end; end; end

