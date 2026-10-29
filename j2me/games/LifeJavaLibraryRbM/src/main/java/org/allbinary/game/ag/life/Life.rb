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

require "org/allbinary/game/ag/life/LifeInterface"

class Life
    include LifeInterface
    attr_accessor :lives, :startLives, :maxlives

    def initialize_fields
        @lives = nil
        @startLives = nil
        @maxlives = nil
    end
    

    def self.createLife()
        begin
            return Life.new((((0).to_i + 32768) % 65536 - 32768), (((0).to_i + 32768) % 65536 - 32768))
        rescue StandardError => e
            raise RuntimeError.new()
        end
    end
    

    def initialize(lives, maxlives)
        initialize_fields
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
    

    def set(lives)
        @lives = lives
    end
    

    def reset()
        @lives = @startLives
    end
    

    def add(lives)
        if !self.reachedLimit()
            if @lives + lives <= self.getMaxlives()
                @lives = ((((@lives + lives)).to_i + 32768) % 65536 - 32768)
            else
                @lives = self.getMaxlives()
            end
        end
    end
    

    def isAlive()
        if @lives <= 0
            return false
        else
            return true
        end
    end
    

    def getMaxlives()
        return @maxlives
    end
    

    def reachedLimit()
        if @lives > @maxlives || @lives < 0
            return true
        else
            return false
        end
    end
    

    def deaths(lives)
        if !self.reachedLimit()
            if @lives - lives >= 0
                @lives = ((((@lives - lives)).to_i + 32768) % 65536 - 32768)
            else
                @lives = 0
            end
        end
    end
    

    def getStartLives()
        return @startLives
    end
    

    def setStartLives(startLives)
        @startLives = startLives
    end
end

class Life
    NO_LIFE = Life.createLife()
end

