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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class CategoryView
    include DomNodeInterface
    attr_accessor :logUtil, :categoryInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @categoryInterface = nil
    end
    

    def initialize(categoryInterface)
        initialize_fields
        @categoryInterface = categoryInterface
    end
    

    def getCategoryInterface()
        return @categoryInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(CategoryData.getInstance().NAME)
        childCategoryVector = @categoryInterface.getChildNodes()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("Number Of Children: " + (childCategoryVector.size()).to_s, self, "toXmlNode")
        end
        size = childCategoryVector.size()
        (0...size).each do |i|
            anyType = childCategoryVector.get(i)
            categoryPropertiesInterface = nil
            if InterfaceUtil.isImplemented("CategoryPropertiesInterface", anyType)
                categoryPropertiesInterface = anyType
            elsif InterfaceUtil.isImplemented("CategoryInterface", anyType)
                categoryInterface = anyType
                categoryPropertiesInterface = categoryInterface.getProperties()
            else
                isImpl = InterfaceUtil.viewAll(anyType.class, CommonSeps.getInstance().NEW_LINE)
                raise StandardError.new("CategoryView found unknown object.\n" + "Show Testing:" + isImpl)
            end
            childCategoryNode = CategoryPropertiesView.new(categoryPropertiesInterface).toXmlNode(document)
            node.appendChild(childCategoryNode)
        end
        return node
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"
require "org/allbinary/business/category/properties/CategoryPropertiesView"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/anyType/InterfaceUtil"
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryInterface"

