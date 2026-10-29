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
# package org.allbinary.canvas

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/CommandListener"

class FullScreenUtil
    

    def self.getInstance()
        return FullScreenUtil.instance
    end
    

    # throws Exception
    def initOnRun(fullScreenInterface, commandListener)
        if commandListener != nil
            self.init(fullScreenInterface)
        end
    end
    

    def init(fullScreenInterface)
    end
    

    def isScreenChange(isFullScreen)
        mainFeatureFactory = MainFeatureFactory.getInstance()
        features = Features.getInstance()
        if features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen
            return true
        end
        return false
    end
    

    def isScreenChangeCanvas(fullScreenInterface)
        return self.isScreenChange(false)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"

class FullScreenUtil
    @@instance = FullScreenUtil.new()
end

