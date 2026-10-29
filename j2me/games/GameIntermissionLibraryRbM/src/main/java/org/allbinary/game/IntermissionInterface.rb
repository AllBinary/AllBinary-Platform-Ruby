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
# package org.allbinary.game


module IntermissionInterface
    

    def getTimeDelayHelper()
        raise NotImplementedError
    end
    

    def isEnabled()
        raise NotImplementedError
    end
    

    def setEnabled(value)
        raise NotImplementedError
    end
    

    def setListener(enableListener)
        raise NotImplementedError
    end
end

require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/game/IntermissionEnableListenerInterface"

