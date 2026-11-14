# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

require "org/allbinary/graphics/form/item/ABCustomItem"

class ABCustomGaugeItem < ABCustomItem
    

    def initialize(label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor)
        super(label, backgroundBasicColor, foregroundBasicColor)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GAUGE_ITEM, ABCustomGaugeItem.new(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ABCustomGaugeItem"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GAUGE_ITEM].include?(name)
        end
        super
    end
end

autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    ABCustomGaugeItem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

