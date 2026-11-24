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
require "org/allbinary/media/audio/Sound"

module ::Org; module Allbinary; module Media; module Audio

class CompositeSound < Sound
    

    def initialize(resource)
        super(resource)
    end
    

    # throws Exception
    def init()
        self.setPlayerP(PlayerComposite.new(AllBinaryMediaManager.createPlayer(self.getResource()), 570))
    end
    java_overload :init, 0
end

autoload :AllBinaryMediaManager, "org/allbinary/media/audio/AllBinaryMediaManager" unless const_defined?(:AllBinaryMediaManager, false)
autoload :PlayerComposite, "org/allbinary/media/audio/PlayerComposite" unless const_defined?(:PlayerComposite, false)

end; end; end; end

