# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "org/allbinary/game/input/AndroidKeyFactory"

class AndroidAPI1KeyFactory < AndroidKeyFactory
    

    def self.getInstance()
        if AndroidAPI1KeyFactory.instance == NullUtil.getInstance().NULL_OBJECT
            AndroidAPI1KeyFactory.instance = AndroidAPI1KeyFactory.new()
        end
        return AndroidAPI1KeyFactory.instance
    end
    

    def initialize()
        super()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"

class AndroidAPI1KeyFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

