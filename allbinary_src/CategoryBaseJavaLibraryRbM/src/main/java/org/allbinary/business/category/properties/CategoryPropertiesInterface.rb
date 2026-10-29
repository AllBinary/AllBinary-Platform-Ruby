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

require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"

module CategoryPropertiesInterface
    include TableMappingInterface
    include ValidationInterface
    

    def setValue(value)
        raise NotImplementedError
    end
    

    def getValue()
        raise NotImplementedError
    end
    

    # throws Exception
    def getWebAppPath()
        raise NotImplementedError
    end
    

    # throws Exception
    def getPath(categoryHierarchyInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def getFileName()
        raise NotImplementedError
    end
    

    # throws Exception
    def isRoot()
        raise NotImplementedError
    end
    

    # throws Exception
    def isRealRoot()
        raise NotImplementedError
    end
end

require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"
require "org/allbinary/logic/io/path/AbPath"

