# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item


class ABCustomItem
    

    def self.getNullInstance()
        if ABCustomItem::NULL_CUSTOM_ITEM == NullUtil.getInstance().NULL_OBJECT
            (ABCustomItem.send(:remove_const, :NULL_CUSTOM_ITEM) if ABCustomItem.const_defined?(:NULL_CUSTOM_ITEM, false); ABCustomItem.const_set(:NULL_CUSTOM_ITEM, ABCustomItem.new(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)))
        end
        return ABCustomItem::NULL_CUSTOM_ITEM
    end
    

    def initialize(label, backgroundBasicColor, foregroundBasicColor)
    end
    

    def setOwner(owner)
    end
    

    def paintXY(graphics, x, y)
    end
    

    def paintUnselected(graphics, x, y)
    end
    

    def isFocusable()
        return false
    end
    

    def getLabel()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def setLabel(label)
    end
    

    def getHeight()
        return 0
    end
    

    def setHeight(height)
    end
    

    def getValue()
        return 0.0
    end
    

    def setValue(value)
    end
    

    def getMinimumWidth()
        return 0
    end
    

    def getMinimumHeight()
        return 0
    end
    

    def preMeasurement(graphics)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_CUSTOM_ITEM, NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ABCustomItem"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_CUSTOM_ITEM].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Screen, "javax/microedition/lcdui/Screen"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    ABCustomItem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

