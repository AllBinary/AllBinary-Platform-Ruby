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
# package org.allbinary.media.audio


class AllBinaryMediaManagerShutdown
    

    # throws Exception
    def self.shutdown(soundsFactoryInterface)
        logUtil = LogUtil.getInstance()
        logUtil.putF("No Media Shutdown for Android Process", AllBinaryMediaManagerShutdown.instance, "shutdown")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/audio/SoundsFactoryInterface"

class AllBinaryMediaManagerShutdown
    @@instance = AllBinaryMediaManagerShutdown.new()
end

