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
# package org.allbinary.debug

require "org/allbinary/debug/DebugInterface"

class NoDebug
    include DebugInterface
    

    def self.getInstance()
        return NoDebug::SINGLETON
    end
    

    def start()
    end
    

    def stop()
    end
    

    def getMaxTime()
        return 10000
    end
    

    def getStartTime()
        return 0
    end
    

    def isRunning()
        return false
    end
end

class NoDebug
    SINGLETON = NoDebug.new()
end

