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
# package org.allbinary.logic.visual.dhtml.style


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style

class StylesValidationFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_dhtml_style_StylesValidationFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance_j0()
        return StylesValidationFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_dhtml_style_StylesValidationFactory
    end
    

    # throws Exception
    def getInstance(document)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        nodeList = document.getElementsByTagName(StylesData.getInstance().NAME)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Style Present: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document), self, commonStrings.GET_INSTANCE)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Styles Present: " + (nodeList.getLength()).to_s, self, commonStrings.GET_INSTANCE)
        end
        (0...nodeList.getLength()).each do |index|
            stylesNode = nodeList.item(index)
            styleNodeList = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(StyleData.getInstance().NAME, stylesNode.getChildNodes())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Number Of Style Nodes Present: " + (styleNodeList.size()).to_s, self, commonStrings.GET_INSTANCE)
            end
            (0...styleNodeList.size()).each do |styleNodesIndex|
                styleNode = styleNodeList.get(styleNodesIndex)
                cssElementStyleNodeList = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(::Org::Allbinary::Logic::Visual::Dhtml::Style::Css::CssElementData.getInstance().NAME, styleNode.getChildNodes())
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Number Of Element Nodes Present: " + (cssElementStyleNodeList.size()).to_s, self, commonStrings.GET_INSTANCE)
                end
                return ::Org::Allbinary::Logic::Visual::Dhtml::Style::Css::CssElementsValidationFactory.getInstance(cssElementStyleNodeList)
            end
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("No Style Present", self, commonStrings.GET_INSTANCE)
        end
        return ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    # throws Exception
    def self.getInstance_j1(hashMap)
        stylesDocument = hashMap.get(::Org::Allbinary::Logic::Communication::Http::Request::NameSpaceRequestParamData::DOCUMENT)
        return StylesValidationFactory.getInstance().getInstance(stylesDocument)
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j0(*java_overload_args) if java_overload_args.length == 0
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        StylesValidationFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StylesValidationFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StylesValidationFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StylesValidationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :NameSpaceRequestParamData, "org/allbinary/logic/communication/http/request/NameSpaceRequestParamData" unless const_defined?(:NameSpaceRequestParamData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; autoload :CssElementData, "org/allbinary/logic/visual/dhtml/style/css/CssElementData" unless const_defined?(:CssElementData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; autoload :CssElementsValidationFactory, "org/allbinary/logic/visual/dhtml/style/css/CssElementsValidationFactory" unless const_defined?(:CssElementsValidationFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :StyleData, "org/allbinary/logic/visual/dhtml/style/StyleData" unless const_defined?(:StyleData, false)
autoload :StylesData, "org/allbinary/logic/visual/dhtml/style/StylesData" unless const_defined?(:StylesData, false)

begin
    StylesValidationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

