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

# require "javax/microedition/media/Player"
require "org/allbinary/media/audio/SoundInterface"
require "java/lang/Runnable"

class Sound
    include SoundInterface
    include Runnable
    attr_accessor :resource, :player

    def initialize_fields
        @resource = nil
        @player = NoPlayer::NO_PLAYER
    end
    

    def initialize(resource)
        initialize_fields
        @resource = resource
    end
    

    def getResource()
        return @resource
    end
    

    def getPlayerP()
        return @player
    end
    

    def setPlayerP(player)
        @player = player
    end
    

    # throws Exception
    def init()
    end
    

    def getDuration()
        return -1
    end
    

    def run()
        begin
            @player.start()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN)
        end
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/NoPlayer"

