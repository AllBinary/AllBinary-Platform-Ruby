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


module SoundsFactoryInterface
    

    def init()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getSoundInterfaceArray()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setInitialized(initialized)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isInitialized()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Sound, "org/allbinary/media/audio/Sound"

