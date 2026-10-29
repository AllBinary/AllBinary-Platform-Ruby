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
# package org.allbinary.logic.io


class InputOutputTypeData
    attr_accessor :NAME, :FILE, :RESPONSE, :DB, :JSP, :JSP_FRAGMENT, :PHP, :ASP, :PL, :DEFAULT, :DEFAULT_FRAGMENT

    def initialize_fields
        @NAME = "INPUT_OUTPUT_TYPE_NAME"
        @FILE = "INPUT_OUTPUT_TYPE_FILE"
        @RESPONSE = "INPUT_OUTPUT_TYPE_RESPONSE"
        @DB = "INPUT_OUTPUT_TYPE_DB"
        @JSP = "jsp"
        @JSP_FRAGMENT = "jspf"
        @PHP = "php"
        @ASP = "asp"
        @PL = "pl"
        @DEFAULT = @JSP
        @DEFAULT_FRAGMENT = @JSP_FRAGMENT
    end
    

    def self.getInstance()
        return InputOutputTypeData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class InputOutputTypeData
    @@instance = InputOutputTypeData.new()
end

