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
# package org.allbinary.time

require "org/allbinary/time/TimeDelayHelper"

class NoTimeDelayHelper < TimeDelayHelper
    

    def initialize()
        super(0)
    end
    

    def isTimeTNT()
        return true
    end
    

    def isTimeSinceTNT(delay)
        return true
    end
    

    def isTime(currentTime)
        return true
    end
    

    def isTimeSince(delay, currentTime)
        return true
    end
end

class NoTimeDelayHelper
    SINGLETON = NoTimeDelayHelper.new()
end

