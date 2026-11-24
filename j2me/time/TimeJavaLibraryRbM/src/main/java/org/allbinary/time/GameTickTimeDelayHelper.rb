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
# package org.allbinary.time


module ::Org; module Allbinary; module TimePackage

class GameTickTimeDelayHelper
    attr_accessor :timeDelta, :startTime, :lastStartTime

    def jfields_org_allbinary_time_GameTickTimeDelayHelper
        @timeDelta = 0 unless instance_variable_defined?(:@timeDelta)
        @startTime = nil unless instance_variable_defined?(:@startTime)
        @lastStartTime = nil unless instance_variable_defined?(:@lastStartTime)
    end
    

    def initialize(startTime)
        jfields_org_allbinary_time_GameTickTimeDelayHelper
        @startTime = startTime
        @lastStartTime = 0
    end
    

    def setStartTime()
        @startTime = (::Time.now.to_f * 1000).to_i
        return @startTime
    end
    

    def loop()
        if @lastStartTime == (-9223372036854775808)
            @timeDelta = 0
        else
            @timeDelta = (::Time.now.to_f * 1000).to_i - @lastStartTime
        end
    end
    

    def getTimeFromStart()
        return @startTime - @lastStartTime
    end
end

require "java/lang/System"

end; end; end

