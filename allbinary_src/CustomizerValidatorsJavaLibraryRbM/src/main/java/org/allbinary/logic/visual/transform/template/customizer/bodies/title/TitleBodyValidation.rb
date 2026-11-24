#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 leIIgal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.transform.template.customizer.bodies.title

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Bodies; module Title

class TitleBodyValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :body, :titleValidation

    def jfields_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @body = nil unless instance_variable_defined?(:@body)
        @titleValidation = nil unless instance_variable_defined?(:@titleValidation)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_1(*args)
        else raise ArgumentError, "No constructor of TitleBodyValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document))
        return jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_0()
        TitleBodyValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @body = stringUtil.EMPTY_STRING
        @titleValidation = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleNotRequiredValidation.new()
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_1_1(document)
        TitleBodyValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "Constructor(document)")
        end
        nodeList = document.getElementsByTagName(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Bodies::BodyData.getInstance().NAME)
        (0...nodeList.getLength()).each do |index|
            aBodyNode = nodeList.item(index)
            aBodyValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, aBodyNode.getChildNodes())
            @body = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(aBodyValueNode)
            titleNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().NAME, aBodyNode.getChildNodes())
            @titleValidation = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleNotRequiredValidation.new(titleNode)
            if index > 1
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("To Many Body Nodes", self, @commonStrings.CONSTRUCTOR)
                end
            end
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation_1_2(hashMap)
        TitleBodyValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_bodies_title_TitleBodyValidation
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.START, self, "Constructor(hashmap)")
        end
        self.getFormData(hashMap)
    end
    

    # throws Exception
    def getFormData(hashMap)
        @body = hashMap.get(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Bodies::BodyData.getInstance().NAME)
        @titleValidation = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleNotRequiredValidation.new(hashMap)
    end
    java_overload :getFormData, 1
    

    def isValid()
        begin
            isValid = true
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TitleBodyValidation", self, @commonStrings.IS_VALID)
            end
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidNotRequired(@body, ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Bodies::BodyData.getInstance().MIN, ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB)
                isValid = false
            end
            if !@titleValidation.isValid()
                isValid = false
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TitleBodyValidation: " + (isValid).to_s, self, @commonStrings.IS_VALID)
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
            begin
                stringBuffer.append("Error: Data submitted is < ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Bodies::BodyData.getInstance().MIN).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" or > ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            end
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Title Body: " + @body, self, "toXmlNode(document)")
        end
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Bodies::BodyData.getInstance().NAME, @body)
        node.appendChild(@titleValidation.toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomData, "org/allbinary/data/tree/dom/DomData" unless const_defined?(:DomData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlData, "org/allbinary/logic/communication/sql/AbSqlData" unless const_defined?(:AbSqlData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Bodies; autoload :BodyData, "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData" unless const_defined?(:BodyData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title; autoload :TitleData, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData" unless const_defined?(:TitleData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title; autoload :TitleNotRequiredValidation, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleNotRequiredValidation" unless const_defined?(:TitleNotRequiredValidation, false); end; end; end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

