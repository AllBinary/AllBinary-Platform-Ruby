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

require "org/allbinary/game/IntermissionInterface"

class Intermission
    include IntermissionInterface
    attr_accessor :enabled, :timeElapsedHelper, :intermissionEnableListener

    def initialize_fields
        @enabled = false
        @timeElapsedHelper = TimeDelayHelper.new(0)
        @intermissionEnableListener = NullIntermissionEnableListener.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def setListener(enableListener)
        @intermissionEnableListener = enableListener
    end
    

    def getTimeDelayHelper()
        return @timeElapsedHelper
    end
    

    def setEnabled(enabled)
        @enabled = enabled
        if self.isEnabled()
            self.getTimeDelayHelper().setStartTimeTNT()
        end
        @intermissionEnableListener.notifyIntermission(enabled)
    end
    

    def isEnabled()
        return @enabled
    end
end

require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/game/IntermissionEnableListenerInterface"
require "org/allbinary/game/NullIntermissionEnableListener"

