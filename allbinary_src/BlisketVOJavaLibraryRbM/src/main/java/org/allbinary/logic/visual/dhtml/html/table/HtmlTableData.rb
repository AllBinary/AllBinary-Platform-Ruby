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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"

class HtmlTableData
    @@instance = HtmlTableData.new()
end

