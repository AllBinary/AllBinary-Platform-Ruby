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
# package org.allbinary.logic.visual.transform.template.customizer.includes.globals

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Includes; module Globals

class GlobalsValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :storeFrontInterface

    def jfields_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation_1(*args)
        else raise ArgumentError, "No constructor of GlobalsValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation_1_1(storeName)
        GlobalsValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation
        @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation_1_2(document)
        GlobalsValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_globals_GlobalsValidation
        raise StandardError.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    

    def isValid()
        begin
            valid = true
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GlobalsData::NAME)
        node.appendChild(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontView.new(@storeFrontInterface).toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontView, "org/allbinary/business/context/modules/storefront/StoreFrontView" unless const_defined?(:StoreFrontView, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :GlobalsData, "org/allbinary/logic/visual/transform/template/customizer/includes/globals/GlobalsData" unless const_defined?(:GlobalsData, false)

end; end; end; end; end; end; end; end; end

