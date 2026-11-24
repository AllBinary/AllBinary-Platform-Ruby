# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item


module ::Org; module Allbinary; module Graphics; module Form; module Item

class ABCustomItem
    

    def self.getNullInstance()
        if ABCustomItem::NULL_CUSTOM_ITEM == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (ABCustomItem.instance_exec(ABCustomItem.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)) { |java_value| remove_const(:NULL_CUSTOM_ITEM) if const_defined?(:NULL_CUSTOM_ITEM, false); const_set(:NULL_CUSTOM_ITEM, java_value) })
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
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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
            const_set(:NULL_CUSTOM_ITEM, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
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

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Screen, "javax/microedition/lcdui/Screen" unless const_defined?(:Screen, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    ABCustomItem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

