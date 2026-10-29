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
# package org.allbinary.graphics


class RelativeRelationship
    attr_accessor :typesAllowedList, :x, :y, :z

    def initialize_fields
        @typesAllowedList = nil
        @x = nil
        @y = nil
        @z = nil
    end
    

    def initialize(point, typesAllowedList)
        initialize_fields
        @x = point.getX()
        @y = point.getY()
        @z = point.getZ()
        @typesAllowedList = typesAllowedList
    end
    

    def getX()
        return @x
    end
    

    def getY()
        return @y
    end
    

    def getZ()
        return @z
    end
    

    def getTypesAllowedList()
        return @typesAllowedList
    end
    

    def setTypesAllowedList(typesAllowedList)
        @typesAllowedList = typesAllowedList
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"

class RelativeRelationship
    NULL_RELATIVE_RELATIONSHIP = RelativeRelationship.new(PointFactory.getInstance().ZERO_ZERO, BasicArrayListUtil.getInstance().getImmutableInstance())
end

