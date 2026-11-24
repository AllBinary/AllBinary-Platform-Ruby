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
# package org.allbinary.game.layer.hud


module ::Org; module Allbinary; module Game; module Layer; module Hud

class LapInfo
    attr_accessor :numberOfLaps, :totalLaps

    def jfields_org_allbinary_game_layer_hud_LapInfo
        @numberOfLaps = nil unless instance_variable_defined?(:@numberOfLaps)
        @totalLaps = nil unless instance_variable_defined?(:@totalLaps)
    end
    

    def initialize(totalLaps)
        jfields_org_allbinary_game_layer_hud_LapInfo
        @totalLaps = totalLaps
        @numberOfLaps = 1
    end
    

    def add()
        @numberOfLaps += 1
    end
    

    def getCurrentLap()
        return @numberOfLaps
    end
    

    def getTotalLaps()
        return @totalLaps
    end
    

    def isDone()
        if @numberOfLaps >= @totalLaps
            return true
        end
        return false
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("isDone: ")
        stringBuffer.appendboolean(self.isDone())
        stringBuffer.append(" CurrentLap: ")
        stringBuffer.appendint(self.getCurrentLap())
        stringBuffer.append(" Total Laps: ")
        stringBuffer.appendint(self.getTotalLaps())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_LAP_INFO, LapInfo.new(-1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LapInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_LAP_INFO].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    LapInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

