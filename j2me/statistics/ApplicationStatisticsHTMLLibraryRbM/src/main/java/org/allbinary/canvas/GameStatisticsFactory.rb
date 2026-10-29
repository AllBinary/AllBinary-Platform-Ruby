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

#ActualPlatform
class GameStatisticsFactory < BaseGameStatistics
    attr_accessor :stringBuffer

    def initialize_fields
        @stringBuffer = StringMaker.new()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return GameStatisticsFactory.instance
    end
    

    def add(string)
        if @stringBuffer.length() > 12000
            @stringBuffer.delete(0, @stringBuffer.length())
            @stringBuffer.append("Old Stats Cleared")
        end
        @stringBuffer.append(string)
    end
    

    def toString()
        return StringMaker.new().append(super.to_s).append(@stringBuffer.to_s).to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"

class GameStatisticsFactory
    @@instance = GameStatisticsFactory.new()
end

