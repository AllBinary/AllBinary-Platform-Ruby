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
# package org.allbinary.view

require "org/allbinary/graphics/GPoint"

class ViewPositionBase < GPoint
    

    def initialize(x, y, z)
        super(x, y, z)
    end
    

    def getX2()
        return self.getX()
    end
    

    def getY2()
        return self.getY()
    end
    

    def getZ2()
        return self.getZ()
    end
    

    def setAllbinaryLayer(allbinaryLayer)
    end
end

class ViewPositionBase
    NULL_VIEW_POSITION = ViewPositionBase.new(0, 0, 0)
end

