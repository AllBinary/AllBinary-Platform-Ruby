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
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"

module ::Org; module Allbinary; module Business; module Category

module CategoryInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    

    def getChildNodes()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getChildNodes, 0
    

    def addChildProperty(categoryPropertiesInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :addChildProperty, 1
    

    def addChild(categoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :addChild, 1
    

    def removeChild(categoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :removeChild, 1
    

    # throws Exception
    def isLeaf()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isLeaf, 0
    

    def getProperties()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getProperties, 0
    

    def setProperties(categoryPropertiesInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setProperties, 1
    

    def getHierarchy()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getHierarchy, 0
    

    def setHierarchy(categoryHierarchyInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setHierarchy, 1
    

    # throws Exception
    def getPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPath, 0
    

    # throws Exception
    def getFilePath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getFilePath, 0
    

    # throws Exception
    def getWebAppPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getWebAppPath, 0
    

    # throws Exception
    def getRootFilePath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getRootFilePath, 0
    

    # throws Exception
    def log()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :log, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; module Hierarchy; autoload :CategoryHierarchyInterface, "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface" unless const_defined?(:CategoryHierarchyInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface" unless const_defined?(:CategoryPropertiesInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end

end; end; end; end

