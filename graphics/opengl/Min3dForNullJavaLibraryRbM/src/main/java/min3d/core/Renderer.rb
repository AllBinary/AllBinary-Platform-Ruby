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


module ::Min3d; module Core

module Renderer
    

    def onSurfaceCreated(gl, config)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onSurfaceChanged(gl, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onDrawFrame(gl)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Javax; module Microedition; module Khronos; module Egl; autoload :EGLConfig, "javax/microedition/khronos/egl/EGLConfig" unless const_defined?(:EGLConfig, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end

end; end

