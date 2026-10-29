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
# package javax.microedition.lcdui


#PlatformNullImageJavaLibrary
class PlatformImage
    

    def getImage(graphicsSurface2)
        return NullImage::NULL_IMAGE
    end
    

    def getSurfaceWidth(graphicsSurface2, width)
        return width
    end
    

    def getSurfaceHeight(graphicsSurface2, height)
        return height
    end
    

    def getWidth(image, width)
        return width
    end
    

    def getHeight(image, height)
        return height
    end
    

    def getGraphics(graphicsSurface, width, height, image)
        raise RuntimeError.new()
    end
    

    def drawImage(image, x, y, anchor, g2, g)
    end
    

    def drawRegion(image, x_src, y_src, width, height, transform, x_dst, y_dst, anchor, g)
    end
    

    def getRGB(argb, offset, scanlength, x, y, width, height, image)
    end
    

    def setRGB(argb, offset, scanlength, x, y, width, height, image)
    end
    

    def getData(image)
        return NullUtil.getInstance().NULL_INT_ARRAY
    end
end

require "org/allbinary/logic/NullUtil"
require "javax/microedition/lcdui/NullImage"

