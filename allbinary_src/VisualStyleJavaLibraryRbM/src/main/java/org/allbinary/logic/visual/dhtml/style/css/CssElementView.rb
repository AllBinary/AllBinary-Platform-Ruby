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
# package org.allbinary.logic.visual.dhtml.style.css

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css

class CssElementView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :TITLE, :DESCRIPTION, :value, :title, :description, :cssElementVector, :cssPropertyVector

    def jfields_org_allbinary_logic_visual_dhtml_style_css_CssElementView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @TITLE = "title"
        @DESCRIPTION = "description"
        @value = nil unless instance_variable_defined?(:@value)
        @title = nil unless instance_variable_defined?(:@title)
        @description = nil unless instance_variable_defined?(:@description)
        @cssElementVector = nil unless instance_variable_defined?(:@cssElementVector)
        @cssPropertyVector = nil unless instance_variable_defined?(:@cssPropertyVector)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_dhtml_style_css_CssElementView_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_dhtml_style_css_CssElementView_1(*args)
        else raise ArgumentError, "No constructor of CssElementView takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_CssElementView_0()
        jfields_org_allbinary_logic_visual_dhtml_style_css_CssElementView
        @cssPropertyVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @title = stringUtil.EMPTY_STRING
        @description = stringUtil.EMPTY_STRING
        @value = stringUtil.EMPTY_STRING
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_CssElementView_1(node)
        jfields_org_allbinary_logic_visual_dhtml_style_css_CssElementView
        begin
            valueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, node.getChildNodes())
            @value = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(valueNode)
            titleValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(@TITLE, node.getChildNodes())
            if titleValueNode != nil
                @title = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(titleValueNode)
            else
                stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
                @title = stringUtil.EMPTY_STRING
            end
            descriptionValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(@DESCRIPTION, node.getChildNodes())
            if descriptionValueNode != nil
                @description = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(descriptionValueNode)
            else
                @description = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Value: ").append(@value).append("\nTitle: ").append(@title).append("\nDescription: ").append(@description).to_s, self, @commonStrings.CONSTRUCTOR)
            end
            cssElementStyleNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(CssElementData.getInstance().NAME, node.getChildNodes())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Child Css Elements: " + (cssElementStyleNodeVector.size()).to_s, self, "CssElementView()")
            end
            @cssElementVector = CssElementsValidationFactory.getInstance(cssElementStyleNodeVector)
            nodeList = node.getChildNodes()
            @cssPropertyVector = ::Org::Allbinary::Logic::Visual::Dhtml::Style::Css::Property::CssPropertiesValidationFactory.getInstance(nodeList)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Value: ").append(@value).append("\nTitle: ").append(@title).append("\nDescription: ").append(@description).to_s, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise StandardError.new("CssElementView")
        end
    end
    

    def getValue()
        return @value
    end
    java_overload :getValue, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, @value)
        hashMap.put(@TITLE, @title)
        hashMap.put(@DESCRIPTION, @description)
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("CssView HashMap: " + hashMap.to_s, self, "toXmlNode")
        end
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, CssElementData.getInstance().NAME, hashMap)
        size = @cssPropertyVector.size()
        (0...size).each do |index|
            cssPropertyDomNodeInterface = @cssPropertyVector.get(index)
            node.appendChild(cssPropertyDomNodeInterface.toXmlNode(document))
        end
        size2 = @cssElementVector.size()
        (0...size2).each do |index|
            cssElementDomNodeInterface = @cssElementVector.get(index)
            node.appendChild(cssElementDomNodeInterface.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomData, "org/allbinary/data/tree/dom/DomData" unless const_defined?(:DomData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property; autoload :CssPropertiesValidationFactory, "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertiesValidationFactory" unless const_defined?(:CssPropertiesValidationFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :CssElementData, "org/allbinary/logic/visual/dhtml/style/css/CssElementData" unless const_defined?(:CssElementData, false)
autoload :CssElementsValidationFactory, "org/allbinary/logic/visual/dhtml/style/css/CssElementsValidationFactory" unless const_defined?(:CssElementsValidationFactory, false)

end; end; end; end; end; end; end

