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
# package org.allbinary.logic.visual.transform.template.customizer.hedges.heading

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Hedges; module Heading

class HeadingValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :title, :logo

    def jfields_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @title = nil unless instance_variable_defined?(:@title)
        @logo = nil unless instance_variable_defined?(:@logo)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_1(*args)
        else raise ArgumentError, "No constructor of HeadingValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document))
        return jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_0()
        HeadingValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation
        @title = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleValidation.new()
        @logo = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Logo::LogoValidation.new()
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_1_1(document)
        HeadingValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation
        headingNodeList = document.getElementsByTagName(HeadingData::NAME)
        titleNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().NAME, headingNodeList.item(0).getChildNodes())
        logoNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Logo::LogoData.getInstance().NAME, headingNodeList.item(0).getChildNodes())
        @title = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleValidation.new(titleNode)
        @logo = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Logo::LogoValidation.new(logoNode)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation_1_2(hashMap)
        HeadingValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_hedges_heading_HeadingValidation
        self.getFormData(hashMap)
    end
    

    # throws Exception
    def getFormData(hashMap)
        @title = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleValidation.new(hashMap)
        @logo = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Logo::LogoValidation.new(hashMap)
    end
    java_overload :getFormData, 1
    

    def isValid()
        begin
            valid = true
            titleValid = true
            logoValid = true
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            if !@title.isValid()
                titleValid = false
            end
            if !@logo.isValid()
                logoValid = false
            else
                @logo.processLogoFile()
            end
            if !titleValid && !logoValid
                valid = false
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("HeadingValidation: " + (valid).to_s, self, @commonStrings.IS_VALID)
            end
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
            valid = true
            titleValid = true
            logoValid = true
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if !@title.isValid()
                titleValid = false
            end
            if !@logo.isValid()
                logoValid = false
            end
            if !titleValid && !logoValid
                valid = false
            end
            if !valid
                stringBuffer.append("Include a title and/or logo for the header.")
            end
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
        node = document.createElement(HeadingData::NAME)
        node.appendChild(@logo.toXmlNode(document))
        node.appendChild(@title.toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Logo; autoload :LogoData, "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData" unless const_defined?(:LogoData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Logo; autoload :LogoValidation, "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoValidation" unless const_defined?(:LogoValidation, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title; autoload :TitleData, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData" unless const_defined?(:TitleData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title; autoload :TitleValidation, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleValidation" unless const_defined?(:TitleValidation, false); end; end; end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :HeadingData, "org/allbinary/logic/visual/transform/template/customizer/hedges/heading/HeadingData" unless const_defined?(:HeadingData, false)

end; end; end; end; end; end; end; end; end

