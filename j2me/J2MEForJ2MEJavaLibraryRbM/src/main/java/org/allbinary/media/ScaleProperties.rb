# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media


class ScaleProperties
    attr_accessor :scaleX, :scaleY, :scaleWidth, :scaleHeight, :shouldScale

    def initialize_fields
        @scaleX = 1.0
        @scaleY = 1.0
        @scaleWidth = 0
        @scaleHeight = 0
        @shouldScale = false
    end

    def initialize
        initialize_fields
    end
    

    def toString()
        return StringMaker.new().append(CommonLabels.getInstance().COLON_SEP).appendboolean(@shouldScale).append("scaleX: ").appendfloat(@scaleX).append("scaleY: ").appendfloat(@scaleY).append("scaleWidth: ").appendint(@scaleWidth).append("scaleHeight: ").appendint(@scaleHeight).to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"

class ScaleProperties
    @@instance = ScaleProperties.new()
end

