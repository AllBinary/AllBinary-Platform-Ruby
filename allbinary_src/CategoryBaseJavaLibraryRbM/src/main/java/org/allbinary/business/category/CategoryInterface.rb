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

require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"

module CategoryInterface
    include TableMappingInterface
    include ValidationInterface
    

    def getChildNodes()
        raise NotImplementedError
    end
    

    def addChildProperty(categoryPropertiesInterface)
        raise NotImplementedError
    end
    

    def addChild(categoryInterface)
        raise NotImplementedError
    end
    

    def removeChild(categoryInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def isLeaf()
        raise NotImplementedError
    end
    

    def getProperties()
        raise NotImplementedError
    end
    

    def setProperties(categoryPropertiesInterface)
        raise NotImplementedError
    end
    

    def getHierarchy()
        raise NotImplementedError
    end
    

    def setHierarchy(categoryHierarchyInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def getPath()
        raise NotImplementedError
    end
    

    # throws Exception
    def getFilePath()
        raise NotImplementedError
    end
    

    # throws Exception
    def getWebAppPath()
        raise NotImplementedError
    end
    

    # throws Exception
    def getRootFilePath()
        raise NotImplementedError
    end
    

    # throws Exception
    def log()
        raise NotImplementedError
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"
require "org/allbinary/logic/io/path/AbPath"

