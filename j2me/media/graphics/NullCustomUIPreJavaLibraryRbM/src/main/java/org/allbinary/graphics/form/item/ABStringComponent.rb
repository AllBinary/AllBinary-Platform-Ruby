# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item


class ABStringComponent
    

    def getBackgroundBasicColor()
        return BasicColorFactory.getInstance().WHITE
    end
    

    def initialize(backgroundBasicColor, foregroundBasicColor)
    end
    

    def getForegroundBasicColor()
        return BasicColorFactory.getInstance().WHITE
    end
    

    def setForegroundBasicColor(foregroundBasicColor)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_STRING_COMPONENT, ABStringComponent.new(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ABStringComponent"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_STRING_COMPONENT].include?(name)
        end
        super
    end
end

autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"

begin
    ABStringComponent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

