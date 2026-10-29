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
# package org.allbinary.graphics.opengles.renderer

# require "javax/microedition/khronos/egl/EGLConfig"
# require "javax/microedition/khronos/opengles/GL10"

class EmulatorCustomRenderer
    attr_accessor :logUtil, :commonStrings, :renderStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @renderStrings = RendererStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def onSurfaceCreated(gl, eglConfig)
        @logUtil.putF(@commonStrings.START, self, @renderStrings.ON_SURFACE_CREATED)
        initEmulatorFactory = InitEmulatorFactory.getInstance()
        if !initEmulatorFactory.isInitEmulator()
            begin
                _WAIT_FOR_EMULATOR = "Waiting on Emulator Initialization"
                while !initEmulatorFactory.isInitEmulator()
                    PreLogUtil.put(_WAIT_FOR_EMULATOR, self, @renderStrings.ON_SURFACE_CREATED)
                    sleep((180) / 1000.0)
                end
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @renderStrings.ON_SURFACE_CREATED, e)
            end
        end
    end
end

require "org/allbinary/emulator/InitEmulatorFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/graphics/opengles/renderer/RendererStrings"
require "java/lang/Thread"

