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
# package org.allbinary.logic.visual.dhtml.html.table


class HtmlTableData
    attr_accessor :LEFT, :RIGHT, :NONE, :TOP, :BOTTOM, :TOPBOT, :SIDES, :ALL, :BORDERED, :BASIC, :ROWS, :FRAMES

    def initialize_fields
        @LEFT = CommonStrings.getInstance().LEFT
        @RIGHT = CommonStrings.getInstance().RIGHT
        @NONE = "none"
        @TOP = "top"
        @BOTTOM = "bottom"
        @TOPBOT = "topbot"
        @SIDES = "sides"
        @ALL = "all"
        @BORDERED = "border"
        @BASIC = "basic"
        @ROWS = "rows"
        @FRAMES = [@NONE, @TOP, @BOTTOM, @TOPBOT, @SIDES, @ALL, @BORDERED]
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return HtmlTableData.instance
    end

    def self.instance()
        HtmlTableData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HtmlTableData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HtmlTableData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HtmlTableData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    HtmlTableData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

