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

require "java/lang/JavaOverload"
require "org/allbinary/media/audio/SoundInterface"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Media; module Audio

class Sound
    include SoundInterface
    include ::Java::Lang::Runnable
    attr_accessor :resource, :player

    def jfields_org_allbinary_media_audio_Sound
        @resource = nil unless instance_variable_defined?(:@resource)
        @player = NoPlayer::NO_PLAYER
    end
    

    def initialize(resource)
        jfields_org_allbinary_media_audio_Sound
        @resource = resource
    end
    

    def getResource()
        return @resource
    end
    java_overload :getResource, 0
    

    def getPlayerP()
        return @player
    end
    java_overload :getPlayerP, 0
    

    def setPlayerP(player)
        @player = player
    end
    java_overload :setPlayerP, 1
    

    # throws Exception
    def init()
    end
    java_overload :init, 0
    

    def getDuration()
        return -1
    end
    java_overload :getDuration, 0
    

    def run()
        begin
            @player.start()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN)
        end
    end
    java_overload :run, 0
end

module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :NoPlayer, "org/allbinary/media/audio/NoPlayer" unless const_defined?(:NoPlayer, false)

end; end; end; end

