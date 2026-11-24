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
# package org.allbinary.business.category

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Category

class CategoryView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :categoryInterface

    def jfields_org_allbinary_business_category_CategoryView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @categoryInterface = nil unless instance_variable_defined?(:@categoryInterface)
    end
    

    def initialize(categoryInterface)
        jfields_org_allbinary_business_category_CategoryView
        @categoryInterface = categoryInterface
    end
    

    def getCategoryInterface()
        return @categoryInterface
    end
    java_overload :getCategoryInterface, 0
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(CategoryData.getInstance().NAME)
        childCategoryVector = @categoryInterface.getChildNodes()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("Number Of Children: " + (childCategoryVector.size()).to_s, self, "toXmlNode")
        end
        size = childCategoryVector.size()
        (0...size).each do |i|
            anyType = childCategoryVector.get(i)
            categoryPropertiesInterface = nil
            if ::Org::Allbinary::Logic::Java::AnyType::InterfaceUtil.isImplemented("CategoryPropertiesInterface", anyType)
                categoryPropertiesInterface = anyType
            elsif ::Org::Allbinary::Logic::Java::AnyType::InterfaceUtil.isImplemented("CategoryInterface", anyType)
                categoryInterface = anyType
                categoryPropertiesInterface = categoryInterface.getProperties()
            else
                isImpl = ::Org::Allbinary::Logic::Java::AnyType::InterfaceUtil.viewAll(anyType.class, ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
                raise StandardError.new("CategoryView found unknown object.\n" + "Show Testing:" + isImpl)
            end
            childCategoryNode = ::Org::Allbinary::Business::Category::Properties::CategoryPropertiesView.new(categoryPropertiesInterface).toXmlNode(document)
            node.appendChild(childCategoryNode)
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface" unless const_defined?(:CategoryPropertiesInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesView, "org/allbinary/business/category/properties/CategoryPropertiesView" unless const_defined?(:CategoryPropertiesView, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module AnyType; autoload :InterfaceUtil, "org/allbinary/logic/java/anyType/InterfaceUtil" unless const_defined?(:InterfaceUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false)
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false)

end; end; end; end

