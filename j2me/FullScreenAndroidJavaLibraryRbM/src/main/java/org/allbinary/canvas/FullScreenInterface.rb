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
# package org.allbinary.canvas


module FullScreenInterface
    

    def isFullScreenMode()
        raise NotImplementedError
    end
    

    def setFullScreenMode(mode)
        raise NotImplementedError
    end
    

    # throws Exception
    def stopWaiting()
        raise NotImplementedError
    end
    

    # throws Exception
    def waitOnNotify(wait)
        raise NotImplementedError
    end
end

