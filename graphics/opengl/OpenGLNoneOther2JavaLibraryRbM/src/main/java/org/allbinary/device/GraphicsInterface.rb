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


module ::Org; module Allbinary; module Device

module GraphicsInterface
    

    def setFontDebug(font, fontDebug)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :FontDebugBase, "org/allbinary/graphics/font/FontDebugBase" unless const_defined?(:FontDebugBase, false); end; end; end; end

end; end; end

