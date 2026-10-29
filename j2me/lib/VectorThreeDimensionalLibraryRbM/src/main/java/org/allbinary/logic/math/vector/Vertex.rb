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
# package org.allbinary.logic.math.vector


class Vertex
    attr_accessor :x, :y, :z

    def initialize_fields
        @x = BasicDecimal.new(0)
        @y = BasicDecimal.new(0)
        @z = BasicDecimal.new(0)
    end
    

    def initialize()
        initialize_fields
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        positionStrings = PositionStrings.getInstance()
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(@x.to_s)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(@y.to_s)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(@z.to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonSeps"

