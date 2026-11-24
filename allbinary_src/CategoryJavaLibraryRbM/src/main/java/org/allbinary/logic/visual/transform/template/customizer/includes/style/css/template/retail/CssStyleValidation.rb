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
# package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Includes; module Style; module Css; module Template; module Retail

class CssStyleValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :cssStyleElementVector

    def jfields_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @cssStyleElementVector = nil unless instance_variable_defined?(:@cssStyleElementVector)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_1(*args)
        else raise ArgumentError, "No constructor of CssStyleValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document))
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_0()
        CssStyleValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation
        @cssStyleElementVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_1_1(document)
        CssStyleValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation
        @cssStyleElementVector = ::Org::Allbinary::Logic::Visual::Dhtml::Style::StylesValidationFactory.getInstance().getInstance(document)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation_1_2(hashMap)
        CssStyleValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_CssStyleValidation
        @cssStyleElementVector = ::Org::Allbinary::Logic::Visual::Dhtml::Style::StylesValidationFactory.getInstance(hashMap)
    end
    

    def isValid()
        begin
            isValid = true
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            size = @cssStyleElementVector.size()
            (0...size).each do |i|
                styleValidationInterface = @cssStyleElementVector.get(i)
                if !styleValidationInterface.isValid()
                    isValid = false
                end
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("End: " + (isValid).to_s, self, @commonStrings.IS_VALID)
            end
            return isValid
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
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
        node = document.createElement(::Org::Allbinary::Logic::Visual::Dhtml::Style::StylesData.getInstance().NAME)
        styleNode = document.createElement(::Org::Allbinary::Logic::Visual::Dhtml::Style::StyleData.getInstance().NAME)
        node.appendChild(styleNode)
        size = @cssStyleElementVector.size()
        (0...size).each do |i|
            styleDomNodeInterface = @cssStyleElementVector.get(i)
            styleNode.appendChild(styleDomNodeInterface.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Validate; autoload :ValidationInterface, "org/allbinary/logic/control/validate/ValidationInterface" unless const_defined?(:ValidationInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; autoload :StyleData, "org/allbinary/logic/visual/dhtml/style/StyleData" unless const_defined?(:StyleData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; autoload :StylesData, "org/allbinary/logic/visual/dhtml/style/StylesData" unless const_defined?(:StylesData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; autoload :StylesValidationFactory, "org/allbinary/logic/visual/dhtml/style/StylesValidationFactory" unless const_defined?(:StylesValidationFactory, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end; end; end; end

