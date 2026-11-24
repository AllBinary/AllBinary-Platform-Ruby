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


module ::Org; module Allbinary; module Media; module Audio

class MediaPlayerUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_media_audio_MediaPlayerUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_media_audio_MediaPlayerUtil
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
        MediaPlayerUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MediaPlayerUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MediaPlayerUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MediaPlayerUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module Media; autoload :MediaPlayer, "android/media/MediaPlayer" unless const_defined?(:MediaPlayer, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
require "java/lang/Thread"

begin
    MediaPlayerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

