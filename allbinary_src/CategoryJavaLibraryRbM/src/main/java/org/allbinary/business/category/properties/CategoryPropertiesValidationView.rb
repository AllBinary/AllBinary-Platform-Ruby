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
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/business/category/properties/CategoryPropertiesView"

module ::Org; module Allbinary; module Business; module Category; module Properties

class CategoryPropertiesValidationView < CategoryPropertiesView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_business_category_properties_CategoryPropertiesValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(categoryPropertiesInterface)
        super(categoryPropertiesInterface)
        jfields_org_allbinary_business_category_properties_CategoryPropertiesValidationView
    end
    

    # throws Exception
    def isValid()
        return @categoryPropertiesInterface.isValid()
    end
    java_overload :isValid, 0
    

    # throws Exception
    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(@categoryPropertiesInterface.validationInfo())
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation info error", self, "validationInfo()", e)
            end
            return "Error Validating Data"
        end
    end
    java_overload :validationInfo, 0
    

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
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface" unless const_defined?(:CategoryPropertiesInterface, false)

end; end; end; end; end

