# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Graphics"

#Temp should not be in any build
class NullDisplayable < Canvas
    

    def self.getInstance()
        return NullDisplayable::SINGLETON
    end
    

    def initialize()
        super()
    end
    

    def paint(graphics)
    end
end

class NullDisplayable
    SINGLETON = NullDisplayable.new()
end

