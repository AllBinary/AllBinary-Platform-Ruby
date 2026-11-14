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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, NoDebug.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoDebug"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

begin
    NoDebug.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

