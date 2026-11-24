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
require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"

module ::Org; module Allbinary; module Business; module Category; module Properties

class CategoryPropertiesFactory
    include CategoryPropertiesFactoryInterface
    attr_accessor :logUtil, :categoryPropertiesInterface

    def jfields_org_allbinary_business_category_properties_CategoryPropertiesFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @categoryPropertiesInterface = nil unless instance_variable_defined?(:@categoryPropertiesInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1(*args)
        else raise ArgumentError, "No constructor of CategoryPropertiesFactory takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1(*java_overload_args)
        return jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1_3(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1_1(name)
        jfields_org_allbinary_business_category_properties_CategoryPropertiesFactory
        @categoryPropertiesInterface = CategoryProperties.new(name)
    end
    

    def jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1_2(node)
        jfields_org_allbinary_business_category_properties_CategoryPropertiesFactory
        @categoryPropertiesInterface = CategoryProperties.new(node)
    end
    

    def jnew_org_allbinary_business_category_properties_CategoryPropertiesFactory_1_3(categoryPropertiesHashMap)
        jfields_org_allbinary_business_category_properties_CategoryPropertiesFactory
        @categoryPropertiesInterface = CategoryProperties.new(categoryPropertiesHashMap)
    end
    

    def getInstance()
        begin
            return @categoryPropertiesInterface
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
    java_overload :getInstance, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :CategoryProperties, "org/allbinary/business/category/properties/CategoryProperties" unless const_defined?(:CategoryProperties, false)
autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface" unless const_defined?(:CategoryPropertiesInterface, false)

end; end; end; end; end

