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
# package org.allbinary.business.category.properties.root.store.theme

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/category/properties/root/store/RootStoreCategoryProperties"

module ::Org; module Allbinary; module Business; module Category; module Properties; module Root; module Store; module Theme

class RootStoreThemeCategoryProperties < ::Org::Allbinary::Business::Category::Properties::Root::Store::RootStoreCategoryProperties

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_1(*args)
        when 2 then jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2(*args)
        else raise ArgumentError, "No constructor of RootStoreThemeCategoryProperties takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2(*java_overload_args)
        return jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2_3(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_1(transformInfoInterface)
        RootStoreThemeCategoryProperties.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2_1(transformInfoInterface, abPath)
        RootStoreThemeCategoryProperties.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, abPath)
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2_2(transformInfoInterface, node)
        RootStoreThemeCategoryProperties.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, node)
    end
    

    def jnew_org_allbinary_business_category_properties_root_store_theme_RootStoreThemeCategoryProperties_2_3(transformInfoInterface, categoryPropertiesHashMap)
        RootStoreThemeCategoryProperties.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, categoryPropertiesHashMap)
    end
    

    # throws Exception
    def initPath()
        transformInfoHttpStoreInterface = @transformInfoInterface
        storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(transformInfoHttpStoreInterface.getStoreName())
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(storeFrontInterface.getName())
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().THEMEPATH)
        abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        httpServletRequest = transformInfoHttpStoreInterface.getPageContext().getRequest()
        @webAppAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new((httpServletRequest.getContextPath()).to_s + abPath.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        self.setRootFilePath(::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getMainPath()).to_s + abPath.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
    end
    java_overload :initPath, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpStoreInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreInterface" unless const_defined?(:TransformInfoHttpStoreInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end; end; end; end; end

