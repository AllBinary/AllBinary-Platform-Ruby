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
# package org.allbinary.logic.math


class MathData
    attr_accessor :EQUALS, :PLUS, :GREATER_THAN, :MINUS, :DIVIDE, :MULTIPLY

    def initialize_fields
        @EQUALS = nil
        @PLUS = "+"
        @GREATER_THAN = ">"
        @MINUS = nil
        @DIVIDE = nil
        @MULTIPLY = nil
    end
    

    def self.getInstance()
        return MathData.instance
    end
    

    def initialize()
        initialize_fields
        commonSeps = CommonSeps.getInstance()
        @EQUALS = commonSeps.EQUALS
        @MINUS = commonSeps.DASH
        @DIVIDE = commonSeps.FORWARD_SLASH
        @MULTIPLY = CommonPhoneStrings.getInstance().STAR
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"

class MathData
    @@instance = MathData.new()
end

