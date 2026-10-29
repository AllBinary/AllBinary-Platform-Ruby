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
# package org.allbinary.animation.image


class AnimationFactoryInitializationVisitor
    attr_accessor :width, :height, :dx, :dy, :originalDx, :originalDy

    def initialize_fields
        @width = 0
        @height = 0
        @dx = 0
        @dy = 0
        @originalDx = 0
        @originalDy = 0
    end

    def initialize
        initialize_fields
    end
    

    def visit()
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        commonLabels = CommonLabels.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL).appendfloat((@dx).to_f)
        stringBuffer.append(PositionStrings.getInstance().DY_LABEL).appendfloat((@dy).to_f)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(@width)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(@height)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"

