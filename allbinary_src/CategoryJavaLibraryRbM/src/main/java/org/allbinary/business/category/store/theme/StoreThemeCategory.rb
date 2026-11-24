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
# package org.allbinary.business.category.store.theme

require "java/lang/JavaOverload"
require "org/allbinary/business/category/Category"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"

module ::Org; module Allbinary; module Business; module Category; module Store; module Theme

class StoreThemeCategory < ::Org::Allbinary::Business::Category::Category
    include StoreThemeCategoryInterface
    attr_accessor :transformInfoInterface, :themeVector

    def jfields_org_allbinary_business_category_store_theme_StoreThemeCategory
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
        @themeVector = nil unless instance_variable_defined?(:@themeVector)
    end

    def initialize(*args)
        case args.length
        when 3 then jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_3(*args)
        when 4 then jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_4(*args)
        when 5 then jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_5(*args)
        else raise ArgumentError, "No constructor of StoreThemeCategory takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_4(*java_overload_args)
        return jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_4_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::Allbinary::Business::Category::CategoryInterface)) && (java_overload_args[3].nil? || java_overload_args[3].is_a?(::Org::Allbinary::Business::Category::Properties::CategoryPropertiesFactoryInterface))
        return jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_4_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_3(transformInfoInterface, categoryPropertiesFactoryInterface, level)
        StoreThemeCategory.superclass.instance_method(:initialize).bind(self).call(categoryPropertiesFactoryInterface, level)
        jfields_org_allbinary_business_category_store_theme_StoreThemeCategory
        @transformInfoInterface = transformInfoInterface
        @themeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_4_1(transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        StoreThemeCategory.superclass.instance_method(:initialize).bind(self).call(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        jfields_org_allbinary_business_category_store_theme_StoreThemeCategory
        @transformInfoInterface = transformInfoInterface
        @themeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_4_2(transformInfoInterface, node, categoryPropertiesFactoryInterface, level)
        StoreThemeCategory.superclass.instance_method(:initialize).bind(self).call(categoryPropertiesFactoryInterface, level)
        jfields_org_allbinary_business_category_store_theme_StoreThemeCategory
        @transformInfoInterface = transformInfoInterface
        @themeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        self.addThemes(node)
    end
    

    def jnew_org_allbinary_business_category_store_theme_StoreThemeCategory_5(transformInfoInterface, node, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        StoreThemeCategory.superclass.instance_method(:initialize).bind(self).call(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface)
        jfields_org_allbinary_business_category_store_theme_StoreThemeCategory
        @transformInfoInterface = transformInfoInterface
        @themeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        self.addThemes(node)
    end
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    java_overload :getTransformInfoInterface, 0
    

    # throws Exception
    def addThemes(node)
        themesNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Visual::Theme::ThemesData.getInstance().NAME, node.getChildNodes())
        nodeList = themesNode.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            themeNode = nodeList.item(index)
            if themeNode.getNodeName().compareTo(::Org::Allbinary::Logic::Visual::Theme::ThemeData.getInstance().NAME) == 0
                @themeVector.add(::Org::Allbinary::Logic::Visual::Theme::ThemeValidation.new(self, themeNode))
            end
        end
    end
    java_overload :addThemes, 1
    

    def addTheme(themeValidation)
        @themeVector.add(themeValidation)
    end
    java_overload :addTheme, 1
    

    def getThemes()
        return @themeVector
    end
    java_overload :getThemes, 0
    

    # throws Exception
    def isValid()
        if !StoreThemeCategory.superclass.java_super_method(:isValid, 0).bind(self).call()
            return false
        end
        return true
    end
    java_overload :isValid, 0
    

    # throws Exception
    def toHashMap()
        categoryHashMap = StoreThemeCategory.superclass.java_super_method(:toHashMap, 0).bind(self).call()
        categoryHashMap.put(::Org::Allbinary::Logic::Visual::Theme::ThemesData.getInstance().NAME, @themeVector)
        return categoryHashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toVector()
        categoryVector = StoreThemeCategory.superclass.java_super_method(:toVector, 0).bind(self).call()
        return categoryVector
    end
    java_overload :toVector, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Properties; autoload :CategoryPropertiesFactoryInterface, "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface" unless const_defined?(:CategoryPropertiesFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Theme; autoload :ThemeData, "org/allbinary/logic/visual/theme/ThemeData" unless const_defined?(:ThemeData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Theme; autoload :ThemeValidation, "org/allbinary/logic/visual/theme/ThemeValidation" unless const_defined?(:ThemeValidation, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Theme; autoload :ThemesData, "org/allbinary/logic/visual/theme/ThemesData" unless const_defined?(:ThemesData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end

end; end; end; end; end; end

