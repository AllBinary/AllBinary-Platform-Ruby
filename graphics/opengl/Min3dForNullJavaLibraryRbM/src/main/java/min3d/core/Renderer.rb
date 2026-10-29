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
# package min3d.core

# require "javax/microedition/khronos/egl/EGLConfig"
# require "javax/microedition/khronos/opengles/GL10"

module Renderer
    

    def onSurfaceCreated(gl, config)
        raise NotImplementedError
    end
    

    def onSurfaceChanged(gl, width, height)
        raise NotImplementedError
    end
    

    def onDrawFrame(gl)
        raise NotImplementedError
    end
end

