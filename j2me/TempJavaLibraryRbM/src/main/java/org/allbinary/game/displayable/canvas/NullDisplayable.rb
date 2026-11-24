# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "javax/microedition/lcdui/Canvas"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

#Temp should not be in any build
class NullDisplayable < ::Javax::Microedition::Lcdui::Canvas
    

    def self.getInstance()
        return NullDisplayable::SINGLETON
    end
    

    def initialize()
        super()
    end
    

    def paint(graphics)
    end
    java_overload :paint, 1

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

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

begin
    NullDisplayable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

