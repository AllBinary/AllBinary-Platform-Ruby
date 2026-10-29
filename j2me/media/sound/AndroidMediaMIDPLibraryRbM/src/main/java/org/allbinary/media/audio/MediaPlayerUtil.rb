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


class MediaPlayerUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return MediaPlayerUtil.instance
    end
    

    # throws Exception
    def waitForMediaPlayer(mediaPlayer)
        _MESSAGE = "Not Stopped Waiting"
        _METHOD_NAME = "wait"
        index = 0
        while mediaPlayer.isPlaying() && index < 50
            @logUtil.putF(_MESSAGE, self, _METHOD_NAME)
            sleep((100) / 1000.0)
            index += 1
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/media/MediaPlayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "java/lang/Thread"

class MediaPlayerUtil
    @@instance = MediaPlayerUtil.new()
end

