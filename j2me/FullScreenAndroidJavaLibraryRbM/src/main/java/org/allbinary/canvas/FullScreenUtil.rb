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
    end
    

    def init(fullScreenInterface)
    end
    

    def isScreenChange(isFullScreen)
        return false
    end
    

    def isScreenChangeCanvas(fullScreenInterface)
        return self.isScreenChange(fullScreenInterface.isFullScreenMode())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class FullScreenUtil
    @@instance = FullScreenUtil.new()
end

