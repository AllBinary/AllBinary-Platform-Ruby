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
# package org.allbinary.game.score

require "org/allbinary/game/score/ScoreableInterface"

class Scoreable
    include ScoreableInterface
    attr_accessor :points

    def initialize_fields
        @points = nil
    end
    

    def initialize(points)
        initialize_fields
        @points = points
    end
    

    def addPoints(points)
        @points += points
    end
    

    def removePoints(points)
        @points -= points
    end
    

    def setPoints(points)
        @points = points
    end
    

    def getPoints()
        return @points
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:ID, SmallIntegerSingletonFactory.getInstance().getAt(3))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Scoreable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ID].include?(name)
        end
        super
    end
end

autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"

begin
    Scoreable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

