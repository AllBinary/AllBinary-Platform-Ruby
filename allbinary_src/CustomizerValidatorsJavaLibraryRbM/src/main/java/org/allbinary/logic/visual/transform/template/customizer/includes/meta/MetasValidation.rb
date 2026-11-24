#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# II
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.transform.template.customizer.includes.meta

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Includes; module Meta

class MetasValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :storeFrontInterface, :metaValidationVector

    def jfields_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @metaValidationVector = nil unless instance_variable_defined?(:@metaValidationVector)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation_1(*args)
        else raise ArgumentError, "No constructor of MetasValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation_1_1(storeName)
        MetasValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation
        @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
        @metaValidationVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        contentValue = @storeFrontInterface.getName() + " E-Commerce Site"
        keywordsMetaValidation = MetaValidation.new(::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeDataFactory.getInstance().NAME, "Keywords", ::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeValuesData.getInstance().KEYWORDS, contentValue)
        abstractMetaValidation = MetaValidation.new(::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeDataFactory.getInstance().NAME, "Abstract", ::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeValuesData.getInstance().ABSTRACT, contentValue)
        descriptionMetaValidation = MetaValidation.new(::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeDataFactory.getInstance().NAME, "Description", ::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeValuesData.getInstance().DESCRIPTION, contentValue)
        @metaValidationVector.add(keywordsMetaValidation)
        @metaValidationVector.add(abstractMetaValidation)
        @metaValidationVector.add(descriptionMetaValidation)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation_1_2(document)
        MetasValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetasValidation
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
        node = document.createElement(::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetasData.getInstance().NAME)
        metaArray = @metaValidationVector.toArrayType(Array.new(@metaValidationVector.size(), nil))
        size = metaArray.length
        (0...size).each do |i|
            metaValidation = metaArray[i]
            node.appendChild(metaValidation.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta; autoload :HtmlMetaAttributeDataFactory, "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeDataFactory" unless const_defined?(:HtmlMetaAttributeDataFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta; autoload :HtmlMetaAttributeValuesData, "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeValuesData" unless const_defined?(:HtmlMetaAttributeValuesData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta; autoload :HtmlMetasData, "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetasData" unless const_defined?(:HtmlMetasData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :MetaValidation, "org/allbinary/logic/visual/transform/template/customizer/includes/meta/MetaValidation" unless const_defined?(:MetaValidation, false)

end; end; end; end; end; end; end; end; end

