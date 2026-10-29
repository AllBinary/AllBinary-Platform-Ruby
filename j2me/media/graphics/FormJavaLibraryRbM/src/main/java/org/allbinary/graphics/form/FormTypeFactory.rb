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


class FormTypeFactory
    attr_accessor :UNK, :NULL_FORM_TYPE, :TEMP_HORIZONTAL_FORM, :HORIZONTAL_FORM, :VERTICAL_CENTER_FORM

    def initialize_fields
        @UNK = "Unknown FormType"
        @NULL_FORM_TYPE = FormType.new(StringUtil.getInstance().NULL_STRING)
        @TEMP_HORIZONTAL_FORM = FormType.new("TempHorizontal")
        @HORIZONTAL_FORM = FormType.new("Horizontal")
        @VERTICAL_CENTER_FORM = FormType.new("Vertical")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FormTypeFactory.instance
    end
    

    def getFormType()
        displayInfo = DisplayInfoSingleton.getInstance()
        formType = nil
        if displayInfo.isPortrait()
            formType = @VERTICAL_CENTER_FORM
        else
            formType = @HORIZONTAL_FORM
        end
        return formType
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/graphics/form/FormType"

class FormTypeFactory
    @@instance = FormTypeFactory.new()
end

