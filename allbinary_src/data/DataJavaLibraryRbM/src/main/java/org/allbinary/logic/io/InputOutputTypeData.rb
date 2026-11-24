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


module ::Org; module Allbinary; module Logic; module Io

class InputOutputTypeData
    attr_accessor :NAME, :FILE, :RESPONSE, :DB, :JSP, :JSP_FRAGMENT, :PHP, :ASP, :PL, :DEFAULT, :DEFAULT_FRAGMENT

    def jfields_org_allbinary_logic_io_InputOutputTypeData
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
        jfields_org_allbinary_logic_io_InputOutputTypeData
    end

    def self.instance()
        InputOutputTypeData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InputOutputTypeData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InputOutputTypeData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputOutputTypeData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    InputOutputTypeData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

