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
# package org.allbinary.game.input


module KeyInterface
    

    def keyPressed(keyCode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyReleased(keyCode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyPressedByDevice(keyCode, deviceId)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyReleasedByDevice(keyCode, deviceId)
        return super if defined?(super)
        raise NotImplementedError
    end
end

