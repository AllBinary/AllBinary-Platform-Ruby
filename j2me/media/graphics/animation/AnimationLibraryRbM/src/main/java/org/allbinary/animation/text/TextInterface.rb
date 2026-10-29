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
# package org.allbinary.animation.text


module TextInterface
    

    def setTextWithOnMeasure(text, textChangeListener)
        raise NotImplementedError
    end
    

    def getText()
        raise NotImplementedError
    end
    

    def setText(text)
        raise NotImplementedError
    end
    

    def getFontHeight()
        raise NotImplementedError
    end
    

    def getWidth()
        raise NotImplementedError
    end
end

require "org/allbinary/animation/text/TextChangeListener"

