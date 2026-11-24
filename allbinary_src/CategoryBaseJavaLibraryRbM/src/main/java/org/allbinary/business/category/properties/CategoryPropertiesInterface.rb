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
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"

module ::Org; module Allbinary; module Business; module Category; module Properties

module CategoryPropertiesInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    

    def setValue(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setValue, 1
    

    def getValue()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getValue, 0
    

    # throws Exception
    def getWebAppPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getWebAppPath, 0
    

    # throws Exception
    def getPath(categoryHierarchyInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPath, 1
    

    # throws Exception
    def getFileName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getFileName, 0
    

    # throws Exception
    def isRoot()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isRoot, 0
    

    # throws Exception
    def isRealRoot()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isRealRoot, 0
end

module ::Org; module Allbinary; module Business; module Category; module Hierarchy; autoload :CategoryHierarchyInterface, "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface" unless const_defined?(:CategoryHierarchyInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end

end; end; end; end; end

