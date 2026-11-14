# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.displayable.canvas

require "javax/microedition/lcdui/Canvas"

#J2MEForJ2ME
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, NullDisplayable.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullDisplayable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :BaseGameStatistics, "org/allbinary/canvas/BaseGameStatistics"
autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory"

begin
    NullDisplayable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

