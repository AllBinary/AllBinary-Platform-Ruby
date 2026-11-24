# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/ABCustomItem"

module ::Org; module Allbinary; module Graphics; module Form; module Item

class ABCustomImageItem < ABCustomItem
    attr_accessor :yOffset

    def jfields_org_allbinary_graphics_form_item_ABCustomImageItem
        @yOffset = 0
    end
    

    def initialize(label, image, layout, altText, basicColor, yOffset)
        super(label, basicColor, basicColor)
        jfields_org_allbinary_graphics_form_item_ABCustomImageItem
    end
    

    def getImage()
        return ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
    end
    java_overload :getImage, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end; end

