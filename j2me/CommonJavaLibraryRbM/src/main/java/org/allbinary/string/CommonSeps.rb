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

class CommonSeps
    attr_accessor :NEW_LINE, :SEMICOLON, :EQUALS, :SPACE, :COMMA, :COLON, :PERIOD, :UNDERSCORE, :COLON_SEP, :COMMA_SEP, :PARENTHESIS_OPEN, :PARENTHESIS_CLOSE, :BRACE_OPEN, :BRACE_CLOSE, :BRACKET_OPEN, :BRACKET_CLOSE, :DASH, :PERCENT, :AMPERSAND, :FORWARD_SLASH, :BACK_SLASH, :QUESTION, :QUOTE, :QUOTE_END, :COMMENT, :INDENT

    def initialize_fields
        @NEW_LINE = "\n"
        @SEMICOLON = ";"
        @EQUALS = "="
        @SPACE = " "
        @COMMA = ","
        @COLON = ":"
        @PERIOD = "."
        @UNDERSCORE = "_"
        @COLON_SEP = StringMaker.new().append(@COLON).append(@SPACE).to_s
        @COMMA_SEP = StringMaker.new().append(@COMMA).append(@SPACE).to_s
        @PARENTHESIS_OPEN = "("
        @PARENTHESIS_CLOSE = ")"
        @BRACE_OPEN = "{"
        @BRACE_CLOSE = "}"
        @BRACKET_OPEN = "["
        @BRACKET_CLOSE = "]"
        @DASH = "-"
        @PERCENT = "%"
        @AMPERSAND = "&"
        @FORWARD_SLASH = "/"
        @BACK_SLASH = "\\"
        @QUESTION = "?"
        @QUOTE = "\""
        @QUOTE_END = "\","
        @COMMENT = "//"
        @INDENT = "    "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CommonSeps.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"

class CommonSeps
    @@instance = CommonSeps.new()
end

