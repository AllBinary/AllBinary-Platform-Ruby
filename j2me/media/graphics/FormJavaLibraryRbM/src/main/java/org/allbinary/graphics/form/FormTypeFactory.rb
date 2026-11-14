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
        FormTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FormTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FormTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FormTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :FormType, "org/allbinary/graphics/form/FormType"

begin
    FormTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

