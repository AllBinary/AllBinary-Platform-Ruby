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
# package org.allbinary.business.category.properties

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Category; module Properties

class CategoryPropertiesView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :categoryPropertiesInterface

    def jfields_org_allbinary_business_category_properties_CategoryPropertiesView
        @categoryPropertiesInterface = nil unless instance_variable_defined?(:@categoryPropertiesInterface)
    end
    

    def initialize(categoryPropertiesInterface)
        jfields_org_allbinary_business_category_properties_CategoryPropertiesView
        @categoryPropertiesInterface = categoryPropertiesInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        categoryNode = document.createElement(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME)
        newCategoryNode = categoryNode
        newCategoryNode.setAttribute(::Org::Allbinary::Business::Category::CategoryData.getInstance().LABEL, @categoryPropertiesInterface.getValue())
        return categoryNode
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Element, "org/w3c/dom/Element" unless const_defined?(:Element, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface" unless const_defined?(:CategoryPropertiesInterface, false)

end; end; end; end; end

