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
# package org.allbinary.game.ag.life

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/life/LifeInterface"

module ::Org; module Allbinary; module Game; module Ag; module Life

class Life
    include LifeInterface
    attr_accessor :lives, :startLives, :maxlives

    def jfields_org_allbinary_game_ag_life_Life
        @lives = nil unless instance_variable_defined?(:@lives)
        @startLives = nil unless instance_variable_defined?(:@startLives)
        @maxlives = nil unless instance_variable_defined?(:@maxlives)
    end
    

    def self.createLife()
        begin
            return Life.new((((0).to_i + 32768) % 65536 - 32768), (((0).to_i + 32768) % 65536 - 32768))
        rescue StandardError => e
            raise RuntimeError.new()
        end
    end
    

    def initialize(lives, maxlives)
        jfields_org_allbinary_game_ag_life_Life
        @maxlives = maxlives
        if lives > @maxlives
            raise StandardError.new("To Many Lives")
        end
        @lives = lives
        @startLives = lives
    end
    

    def get()
        return @lives
    end
    java_overload :get, 0
    

    def set(lives)
        @lives = lives
    end
    java_overload :set, 1
    

    def reset()
        @lives = @startLives
    end
    java_overload :reset, 0
    

    def add(lives)
        if !self.reachedLimit()
            if @lives + lives <= self.getMaxlives()
                @lives = ((((@lives + lives)).to_i + 32768) % 65536 - 32768)
            else
                @lives = self.getMaxlives()
            end
        end
    end
    java_overload :add, 1
    

    def isAlive()
        if @lives <= 0
            return false
        else
            return true
        end
    end
    java_overload :isAlive, 0
    

    def getMaxlives()
        return @maxlives
    end
    java_overload :getMaxlives, 0
    

    def reachedLimit()
        if @lives > @maxlives || @lives < 0
            return true
        else
            return false
        end
    end
    java_overload :reachedLimit, 0
    

    def deaths(lives)
        if !self.reachedLimit()
            if @lives - lives >= 0
                @lives = ((((@lives - lives)).to_i + 32768) % 65536 - 32768)
            else
                @lives = 0
            end
        end
    end
    java_overload :deaths, 1
    

    def getStartLives()
        return @startLives
    end
    java_overload :getStartLives, 0
    

    def setStartLives(startLives)
        @startLives = startLives
    end
    java_overload :setStartLives, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NO_LIFE, Life.createLife())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Life"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NO_LIFE].include?(name)
        end
        super
    end
end

begin
    Life.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

