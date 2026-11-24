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
# package org.allbinary.media.audio


module ::Org; module Allbinary; module Media; module Audio

class PlayerStateUtil
    attr_accessor :commonStrings, :UNREALIZED, :REALIZED, :PREFETCHED, :STARTED, :CLOSED

    def jfields_org_allbinary_media_audio_PlayerStateUtil
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @UNREALIZED = "UNREALIZED"
        @REALIZED = "REALIZED"
        @PREFETCHED = "PREFETCHED"
        @STARTED = "STARTED"
        @CLOSED = "CLOSED"
    end

    def initialize
        jfields_org_allbinary_media_audio_PlayerStateUtil
    end
    

    def self.getInstance()
        return PlayerStateUtil.instance
    end
    

    def convert(state)
        if state == ::Javax::Microedition::Media::Player::UNREALIZED
            return @UNREALIZED
        elsif state == ::Javax::Microedition::Media::Player::REALIZED
            return @REALIZED
        elsif state == ::Javax::Microedition::Media::Player::PREFETCHED
            return @PREFETCHED
        elsif state == ::Javax::Microedition::Media::Player::STARTED
            return @STARTED
        elsif state == ::Javax::Microedition::Media::Player::CLOSED
            return @CLOSED
        end
        return @commonStrings.UNKNOWN
    end

    def self.instance()
        PlayerStateUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PlayerStateUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PlayerStateUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlayerStateUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    PlayerStateUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

