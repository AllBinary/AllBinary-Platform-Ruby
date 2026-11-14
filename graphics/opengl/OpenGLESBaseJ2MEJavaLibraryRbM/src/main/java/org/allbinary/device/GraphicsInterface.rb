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
# package org.allbinary.device


module GraphicsInterface
    

    def setFontDebug(font, fontDebug)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Font, "javax/microedition/lcdui/Font"
autoload :FontDebugBase, "org/allbinary/graphics/font/FontDebugBase"

