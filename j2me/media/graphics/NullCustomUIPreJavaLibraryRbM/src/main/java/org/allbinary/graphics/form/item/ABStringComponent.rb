# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item


module ::Org; module Allbinary; module Graphics; module Form; module Item

class ABStringComponent
    

    def getBackgroundBasicColor()
        return ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
    end
    

    def initialize(backgroundBasicColor, foregroundBasicColor)
    end
    

    def getForegroundBasicColor()
        return ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
    end
    

    def setForegroundBasicColor(foregroundBasicColor)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_STRING_COMPONENT, ABStringComponent.new(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE))
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

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end

begin
    ABStringComponent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

