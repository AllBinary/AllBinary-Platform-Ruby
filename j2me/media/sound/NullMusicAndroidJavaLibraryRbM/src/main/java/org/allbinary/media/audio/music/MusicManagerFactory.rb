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
# package org.allbinary.media.audio.music


module ::Org; module Allbinary; module Media; module Audio; module Music

class MusicManagerFactory
    

    def self.createMusicManager(soundList)
        return MusicManager.new(MusicService, soundList)
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :MusicManager, "org/allbinary/media/audio/music/MusicManager" unless const_defined?(:MusicManager, false)
autoload :MusicService, "org/allbinary/media/audio/music/MusicService" unless const_defined?(:MusicService, false)

end; end; end; end; end

