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
# package org.allbinary.graphics.displayable

require "java/lang/JavaOverload"
require "org/allbinary/graphics/displayable/ScalableListener"

module ::Org; module Allbinary; module Graphics; module Displayable

class BaseScalable
    include ScalableListener
    

    def getRatio(ratio)
        return 1.0
    end
    java_overload :getRatio, 1
    

    def getLeft(xOffset)
        return -1
    end
    java_overload :getLeft, 1
    

    def getTop(yOffset)
        return -1
    end
    java_overload :getTop, 1
    

    def scale(ratio)
    end
    java_overload :scale, 1
end

end; end; end; end

