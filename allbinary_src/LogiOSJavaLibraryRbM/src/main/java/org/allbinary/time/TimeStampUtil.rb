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


#ActualPlatform
class TimeStampUtil
    

    def self.getInstance()
        return TimeStampUtil.instance
    end
    

    def initialize()
    end
    

    def getAsString()
        calendar = Calendar.getInstance()
        date = calendar.getTime()
        return date.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Calendar"
require "java/util/Date"

class TimeStampUtil
    @@instance = TimeStampUtil.new()
end

