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

# require "javax/microedition/media/Player"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"

class PlayerStateUtil
    @@instance = PlayerStateUtil.new()
end

