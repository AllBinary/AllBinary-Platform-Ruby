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
# package org.allbinary.business.category.properties.root

require "java/lang/JavaOverload"
require "org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface"

module ::Org; module Allbinary; module Business; module Category; module Properties; module Root

class RootCategoryPropertiesAbstract
    include RootCategoryPropertiesInterface
    attr_accessor :category, :fileName

    def jfields_org_allbinary_business_category_properties_root_RootCategoryPropertiesAbstract
        @category = ::Org::Allbinary::Business::Category::CategoryData.getInstance().ROOTCATEGORY
        @fileName = @category + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP).to_s + (::Org::Allbinary::Business::Category::CategoryData.getInstance().UNCRYPTED_EXTENSION).to_s
    end
    

    def initialize()
        jfields_org_allbinary_business_category_properties_root_RootCategoryPropertiesAbstract
    end
    

    def getKey()
        return self.getValue()
    end
    java_overload :getKey, 0
    

    def getValue()
        return @category
    end
    java_overload :getValue, 0
    

    # throws Exception
    def setValue(value)
        raise StandardError.new("No Value Allowed")
    end
    java_overload :setValue, 1
    

    # throws Exception
    def setRootFilePath_j1_1(value)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def setRootFilePath_j1_2(value)
        raise StandardError.new("No Value Allowed")
    end

    def setRootFilePath(*java_overload_args)
        return setRootFilePath_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method setRootFilePath takes #{java_overload_args.length} arguments"
    end

    def setRootFilePath_j1(*java_overload_args)
        return setRootFilePath_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return setRootFilePath_j1_2(*java_overload_args)
    end
    

    # throws Exception
    def getRootFilePath()
        raise StandardError.new("No Value Allowed")
    end
    java_overload :getRootFilePath, 0
    

    # throws Exception
    def isRealRoot()
        raise StandardError.new("No A Real Root")
    end
    java_overload :isRealRoot, 0
    

    # throws Exception
    def isRoot()
        raise StandardError.new("Root but not implemented")
    end
    java_overload :isRoot, 0
    

    # throws Exception
    def getWebAppPath(categoryHierarchyInterface)
        raise StandardError.new("Not Root")
    end
    java_overload :getWebAppPath, 1
    

    def getPath(categoryHierarchyInterface)
        return ::Org::Allbinary::Logic::Io::Path::AbPath.createAbPath()
    end
    java_overload :getPath, 1
    

    def getFileName()
        return @fileName
    end
    java_overload :getFileName, 0
    

    def isValid()
        return true
    end
    java_overload :isValid, 0
    

    def toHashMap()
        categoryHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        categoryHashMap.put(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, @category)
        return categoryHashMap
    end
    java_overload :toHashMap, 0
    

    def toVector()
        categoryVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        categoryVector.add(@category)
        return categoryVector
    end
    java_overload :toVector, 0
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def validationInfo()
        return nil
    end
    java_overload :validationInfo, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Hierarchy; autoload :CategoryHierarchyInterface, "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface" unless const_defined?(:CategoryHierarchyInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end; end; end

