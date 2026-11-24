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
# package org.allbinary.business.category.hierarchy

require "java/lang/JavaOverload"
require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"

module ::Org; module Allbinary; module Business; module Category; module Hierarchy

class CategoryHierarchy
    include CategoryHierarchyInterface
    attr_accessor :rootCategoryInterface, :parentCategoryInterface, :level

    def jfields_org_allbinary_business_category_hierarchy_CategoryHierarchy
        @rootCategoryInterface = nil unless instance_variable_defined?(:@rootCategoryInterface)
        @parentCategoryInterface = nil unless instance_variable_defined?(:@parentCategoryInterface)
        @level = nil unless instance_variable_defined?(:@level)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_2(*args)
        when 3 then jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_3(*args)
        else raise ArgumentError, "No constructor of CategoryHierarchy takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_3(*java_overload_args)
        return jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && java_overload_args[2].is_a?(::Integer)
        return jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_3_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_2(rootCategoryInterface, parentCategoryInterface)
        jfields_org_allbinary_business_category_hierarchy_CategoryHierarchy
        @level = 0
        self.setRoot(rootCategoryInterface)
        self.setParent(parentCategoryInterface)
    end
    

    def jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_3_1(rootCategoryInterface, parentCategoryInterface, level)
        jfields_org_allbinary_business_category_hierarchy_CategoryHierarchy
        @level = level
        self.setRoot(rootCategoryInterface)
        self.setParent(parentCategoryInterface)
    end
    

    def jnew_org_allbinary_business_category_hierarchy_CategoryHierarchy_3_2(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        jfields_org_allbinary_business_category_hierarchy_CategoryHierarchy
        levelString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(categoryPropertiesHashMap.get(::Org::Allbinary::Business::Category::CategoryData.getInstance().LEVEL))
        @level = (levelString).to_s.to_i
        self.setRoot(rootCategoryInterface)
        self.setParent(parentCategoryInterface)
    end
    

    def getLevel()
        return @level
    end
    java_overload :getLevel, 0
    

    def getLevelString()
        return (@level).to_s
    end
    java_overload :getLevelString, 0
    

    def setLevel(level)
        @level = level
    end
    java_overload :setLevel, 1
    

    def setParent(categoryInterface)
        @parentCategoryInterface = categoryInterface
    end
    java_overload :setParent, 1
    

    def setRoot(categoryInterface)
        @rootCategoryInterface = categoryInterface
    end
    java_overload :setRoot, 1
    

    def getRoot()
        return @rootCategoryInterface
    end
    java_overload :getRoot, 0
    

    def getParent()
        return @parentCategoryInterface
    end
    java_overload :getParent, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end

