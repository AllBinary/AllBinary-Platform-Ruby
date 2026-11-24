#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# III
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.transform.template.customizer.includes.meta

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Includes; module Meta

class MetaValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :label, :name, :httpEquiv, :content

    def jfields_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetaValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @label = nil unless instance_variable_defined?(:@label)
        @name = nil unless instance_variable_defined?(:@name)
        @httpEquiv = nil unless instance_variable_defined?(:@httpEquiv)
        @content = nil unless instance_variable_defined?(:@content)
    end

    def initialize(*args)
        case args.length
        when 4 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetaValidation_4(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetaValidation_1(*args)
        else raise ArgumentError, "No constructor of MetaValidation takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetaValidation_4(htmlMetaAttributeData, label, attributeValue, contentValue)
        MetaValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetaValidation
        @label = label
        if htmlMetaAttributeData.equals(::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeDataFactory.getInstance().HTTP_EQUIV)
            @httpEquiv = attributeValue
        elsif htmlMetaAttributeData.equals(::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeDataFactory.getInstance().NAME)
            @name = attributeValue
        end
        @content = contentValue
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetaValidation_1(document)
        MetaValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_meta_MetaValidation
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
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        htmlMetaAttributeDataFactory = ::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaAttributeDataFactory.getInstance()
        hashMap.put(::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaData.getInstance().LABEL.to_s, @label)
        hashMap.put(htmlMetaAttributeDataFactory.NAME.to_s, @name)
        hashMap.put(htmlMetaAttributeDataFactory.HTTP_EQUIV.to_s, @httpEquiv)
        hashMap.put(htmlMetaAttributeDataFactory.CONTENT.to_s, @content)
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Logic::Visual::Dhtml::Html::Head::Meta::HtmlMetaData.getInstance().NAME.to_s, self.toHashMap())
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta; autoload :HtmlMetaAttributeData, "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeData" unless const_defined?(:HtmlMetaAttributeData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta; autoload :HtmlMetaAttributeDataFactory, "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeDataFactory" unless const_defined?(:HtmlMetaAttributeDataFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta; autoload :HtmlMetaData, "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaData" unless const_defined?(:HtmlMetaData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

