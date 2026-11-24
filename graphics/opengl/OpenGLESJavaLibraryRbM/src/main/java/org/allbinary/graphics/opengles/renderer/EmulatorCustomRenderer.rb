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


module ::Org; module Allbinary; module Graphics; module Opengles; module Renderer

class EmulatorCustomRenderer
    attr_accessor :logUtil, :commonStrings, :renderStrings

    def jfields_org_allbinary_graphics_opengles_renderer_EmulatorCustomRenderer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @renderStrings = RendererStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_renderer_EmulatorCustomRenderer
    end
    

    def onSurfaceCreated(gl, eglConfig)
        @logUtil.putF(@commonStrings.START, self, @renderStrings.ON_SURFACE_CREATED)
        initEmulatorFactory = ::Org::Allbinary::Emulator::InitEmulatorFactory.getInstance()
        if !initEmulatorFactory.isInitEmulator()
            begin
                _WAIT_FOR_EMULATOR = "Waiting on Emulator Initialization"
                while !initEmulatorFactory.isInitEmulator()
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(_WAIT_FOR_EMULATOR, self, @renderStrings.ON_SURFACE_CREATED)
                    sleep((180) / 1000.0)
                end
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @renderStrings.ON_SURFACE_CREATED, e)
            end
        end
    end
end

module ::Javax; module Microedition; module Khronos; module Egl; autoload :EGLConfig, "javax/microedition/khronos/egl/EGLConfig" unless const_defined?(:EGLConfig, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module Emulator; autoload :InitEmulatorFactory, "org/allbinary/emulator/InitEmulatorFactory" unless const_defined?(:InitEmulatorFactory, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
autoload :RendererStrings, "org/allbinary/graphics/opengles/renderer/RendererStrings" unless const_defined?(:RendererStrings, false)
require "java/lang/Thread"

end; end; end; end; end

