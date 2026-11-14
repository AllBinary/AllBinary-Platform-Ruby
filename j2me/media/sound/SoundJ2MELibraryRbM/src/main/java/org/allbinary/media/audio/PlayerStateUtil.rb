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


class PlayerStateUtil
    attr_accessor :commonStrings, :UNREALIZED, :REALIZED, :PREFETCHED, :STARTED, :CLOSED

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @UNREALIZED = "UNREALIZED"
        @REALIZED = "REALIZED"
        @PREFETCHED = "PREFETCHED"
        @STARTED = "STARTED"
        @CLOSED = "CLOSED"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PlayerStateUtil.instance
    end
    

    def convert(state)
        if state == Player::UNREALIZED
            return @UNREALIZED
        elsif state == Player::REALIZED
            return @REALIZED
        elsif state == Player::PREFETCHED
            return @PREFETCHED
        elsif state == Player::STARTED
            return @STARTED
        elsif state == Player::CLOSED
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

autoload :Player, "javax/microedition/media/Player"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    PlayerStateUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

