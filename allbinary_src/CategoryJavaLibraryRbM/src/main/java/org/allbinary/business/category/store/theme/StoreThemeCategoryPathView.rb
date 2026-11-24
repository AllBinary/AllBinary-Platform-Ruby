#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.business.category.store.theme

require "java/lang/JavaOverload"
require "org/allbinary/business/category/CategoryView"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Category; module Store; module Theme

class StoreThemeCategoryPathView < ::Org::Allbinary::Business::Category::CategoryView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    

    def initialize(categoryInterface)
        super(categoryInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        node = StoreThemeCategoryPathView.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document)
        storeThemeCategoryInterface = self.getCategoryInterface()
        themeArray = storeThemeCategoryInterface.getThemes().toArray()
        size = themeArray.length
        (0...size).each do |i|
            themeValidation = themeArray[i]
            domNodeInterface = ::Org::Allbinary::Logic::Visual::Theme::ThemePropertiesView.new(themeValidation)
            node.appendChild(domNodeInterface.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Logic; module Visual; module Theme; autoload :ThemeInterface, "org/allbinary/logic/visual/theme/ThemeInterface" unless const_defined?(:ThemeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Theme; autoload :ThemePropertiesView, "org/allbinary/logic/visual/theme/ThemePropertiesView" unless const_defined?(:ThemePropertiesView, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Theme; autoload :ThemeValidation, "org/allbinary/logic/visual/theme/ThemeValidation" unless const_defined?(:ThemeValidation, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :StoreThemeCategoryInterface, "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface" unless const_defined?(:StoreThemeCategoryInterface, false)

end; end; end; end; end; end

