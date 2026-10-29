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
# package org.allbinary


class AndroidUtil
    

    def self.isMemoryRestrictive()
        if AndroidUtil.version < 30
            return true
        end
        return false
    end
    

    def self.isAndroid()
        return true
    end

    def self.version()
        return defined?(@@version) ? @@version : nil
    end

    def self.version=(value)
        @@version = value
    end
end

require "android/app/Activity"
require "android/os/Build"

class AndroidUtil
    NULL_ACTIVITY = Activity.new()
    @@version = Integer(Build::VERSION.SDK)
end

