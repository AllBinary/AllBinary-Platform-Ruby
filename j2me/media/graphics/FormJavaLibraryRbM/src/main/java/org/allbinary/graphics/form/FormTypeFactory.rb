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


module ::Org; module Allbinary; module Graphics; module Form

class FormTypeFactory
    attr_accessor :UNK, :NULL_FORM_TYPE, :TEMP_HORIZONTAL_FORM, :HORIZONTAL_FORM, :VERTICAL_CENTER_FORM

    def jfields_org_allbinary_graphics_form_FormTypeFactory
        @UNK = "Unknown FormType"
        @NULL_FORM_TYPE = FormType.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().NULL_STRING)
        @TEMP_HORIZONTAL_FORM = FormType.new("TempHorizontal")
        @HORIZONTAL_FORM = FormType.new("Horizontal")
        @VERTICAL_CENTER_FORM = FormType.new("Vertical")
    end

    def initialize
        jfields_org_allbinary_graphics_form_FormTypeFactory
    end
    

    def self.getInstance()
        return FormTypeFactory.instance
    end
    

    def getFormType()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
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

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false)

begin
    FormTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

