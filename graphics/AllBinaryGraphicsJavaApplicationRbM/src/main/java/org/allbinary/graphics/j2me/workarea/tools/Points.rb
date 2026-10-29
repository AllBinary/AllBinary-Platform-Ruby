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
# package org.allbinary.graphics.j2me.workarea.tools

require "org/allbinary/graphics/j2me/workarea/tools/PointsInterface"

class Points
    include PointsInterface
    attr_accessor :pointVector

    def initialize_fields
        @pointVector = nil
    end
    

    def initialize()
        initialize_fields
        @pointVector = BasicArrayListD.new()
    end
    

    def init()
        @pointVector.clear()
    end
    

    def getPoints()
        return @pointVector
    end
    

    def addPoints(vector)
        @pointVector.addAll2(vector)
    end
    

    def isValid()
        if @pointVector.size() > 1
            return true
        else
            return false
        end
    end
    

    def getSize()
        return @pointVector.size()
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

