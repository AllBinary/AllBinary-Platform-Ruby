# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.view

require "org/allbinary/view/ViewPositionBase"

class ViewPosition < ViewPositionBase
    attr_accessor :allbinaryLayer

    def initialize_fields
        @allbinaryLayer = AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def self.getInstanceD()
        return ViewPosition.new(0, 0, 0)
    end
    

    def initialize(x, y, z)
        super(x, y, z)
        initialize_fields
    end
    

    def getX()
        return @allbinaryLayer.getXP()
    end
    

    def getY()
        return @allbinaryLayer.getYP()
    end
    

    def getZ()
        return @allbinaryLayer.getZP()
    end
    

    def getX2()
        return self.getX() + @allbinaryLayer.getWidth()
    end
    

    def getY2()
        return self.getY() + @allbinaryLayer.getHeight()
    end
    

    def getZ2()
        return ((self.getZ() + @allbinaryLayer.getDepth())).to_i
    end
    

    def setAllbinaryLayer(allbinaryLayer)
        @allbinaryLayer = allbinaryLayer
    end
end

require "org/allbinary/layer/AllBinaryLayer"

