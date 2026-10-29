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
# package org.allbinary.string

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsProperty"

class CommonLabels
    attr_accessor :WIDTH_LABEL, :HEIGHT_LABEL, :END_LABEL, :TOTAL_LABEL, :INDEX_LABEL, :START_LABEL, :COMMAND_LABEL, :NAME_LABEL, :START, :ELAPSED, :CURRENT, :NEXT, :ITEM_LABEL, :RESULT_, :COLON_SEP

    def initialize_fields
        @WIDTH_LABEL = " Width: "
        @HEIGHT_LABEL = " Height: "
        @END_LABEL = "End: "
        @TOTAL_LABEL = "Total: "
        @INDEX_LABEL = "index: "
        @START_LABEL = "Start: "
        @COMMAND_LABEL = "Command: "
        @NAME_LABEL = "Name: "
        @START = @START_LABEL
        @ELAPSED = " Elapsed: "
        @CURRENT = " Current: "
        @NEXT = "Next"
        @ITEM_LABEL = "Item: "
        @RESULT_ = "Result: "
        @COLON_SEP = ": "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CommonLabels.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class CommonLabels
    @@instance = CommonLabels.new()
end

