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

require "org/allbinary/canvas/BaseGameStatistics"

#NoPlatform
class GameStatisticsFactory < BaseGameStatistics
    

    def self.getInstance()
        return GameStatisticsFactory.instance
    end
    

    def add(string)
    end
    

    def toString()
        raise RuntimeError.new()
    end
    alias_method :to_s, :toString

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GameStatisticsFactory
    @@instance = GameStatisticsFactory.new()
end

