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
# package org.allbinary.logic.visual.dhtml.html.input


class HtmlInputData
    attr_accessor :TEXT, :RADIO, :CHECKBOX, :HIDDEN, :IMAGE, :PASSWORD, :RESET, :SUBMIT, :TYPES

    def initialize_fields
        @TEXT = "text"
        @RADIO = "radio"
        @CHECKBOX = "checkbox"
        @HIDDEN = "hidden"
        @IMAGE = "image"
        @PASSWORD = "password"
        @RESET = "reset"
        @SUBMIT = "submit"
        @TYPES = [@TEXT, @RADIO, @CHECKBOX, @HIDDEN, @IMAGE, @PASSWORD, @RADIO, @RESET, @SUBMIT]
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return HtmlInputData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class HtmlInputData
    @@instance = HtmlInputData.new()
end

