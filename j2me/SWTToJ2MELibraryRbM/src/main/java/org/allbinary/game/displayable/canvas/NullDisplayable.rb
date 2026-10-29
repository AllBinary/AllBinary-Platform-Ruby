# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Graphics"

#SWTToJ2ME
class NullDisplayable < Canvas
    attr_accessor :baseGameStatistics

    def initialize_fields
        @baseGameStatistics = GameStatisticsFactory.getInstance()
    end
    

    def self.getInstance()
        return NullDisplayable::SINGLETON
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def paint(graphics)
        @baseGameStatistics.nextRefresh()
    end
end

require "org/allbinary/canvas/BaseGameStatistics"
require "org/allbinary/canvas/GameStatisticsFactory"

class NullDisplayable
    SINGLETON = NullDisplayable.new()
end

