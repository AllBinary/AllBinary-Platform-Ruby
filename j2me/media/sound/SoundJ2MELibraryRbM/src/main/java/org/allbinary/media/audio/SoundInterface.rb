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

module SoundInterface
    

    def getResource()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPlayerP()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def init()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end

end; end; end; end

