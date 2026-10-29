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


module CategoryFactoryInterface
    

    def getRootInstance()
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getRootInstance(categoryPath)
        raise NotImplementedError
    end
    

    def getRootInstanceFromNode(node)
        raise NotImplementedError
    end
    

    def getInstance(rootCategoryInterface, parentCategoryInterface, name)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(rootCategoryInterface, parentCategoryInterface, node)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/io/path/AbPath"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/CategoryInterface"

