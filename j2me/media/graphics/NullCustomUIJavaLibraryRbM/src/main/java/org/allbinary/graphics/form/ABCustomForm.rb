# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/CustomScreen"

module ::Org; module Allbinary; module Graphics; module Form

class ABCustomForm < CustomScreen
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_graphics_form_ABCustomForm
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize(title, items, backgroundBasicColor, foregroundBasicColor)
        super()
        jfields_org_allbinary_graphics_form_ABCustomForm
    end
    

    def getAllitems()
        return Array.new(0, nil)
    end
    java_overload :getAllitems, 0
    

    def size()
        return 0
    end
    java_overload :size, 0
    

    def setSelectedIndex(index)
    end
    java_overload :setSelectedIndex, 1
    

    def getSelectedIndex()
        return 0
    end
    java_overload :getSelectedIndex, 0
    

    def deleteAll()
    end
    java_overload :deleteAll, 0
    

    def delete(itemNum)
    end
    java_overload :delete, 1
    

    def append(item)
        return -1
    end
    java_overload :append, 1
    

    def insert(itemNum, item)
    end
    java_overload :insert, 2
    

    def set(itemNum, item)
    end
    java_overload :set, 2
    

    def get(itemNum)
        return ::Org::Allbinary::Graphics::Form::Item::ABCustomItem.getNullInstance()
    end
    java_overload :get, 1
    

    def getWidth()
        raise RuntimeError.new()
    end
    java_overload :getWidth, 0
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def getTitle()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getTitle, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

