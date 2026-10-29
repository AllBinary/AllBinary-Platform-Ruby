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
# package org.allbinary.logic.visual.dhtml.html.name


class HtmlNameMathData
    attr_accessor :EQUALS, :PLUS, :MINUS, :DIVIDE, :MULTIPLY

    def initialize_fields
        @EQUALS = "_EQUALS_"
        @PLUS = "_PLUS_"
        @MINUS = "_MINUS_"
        @DIVIDE = "_DIVIDE_"
        @MULTIPLY = "_MULTIPLY_"
    end
    

    def self.getInstance()
        return HtmlNameMathData.instance
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

class HtmlNameMathData
    @@instance = HtmlNameMathData.new()
end

