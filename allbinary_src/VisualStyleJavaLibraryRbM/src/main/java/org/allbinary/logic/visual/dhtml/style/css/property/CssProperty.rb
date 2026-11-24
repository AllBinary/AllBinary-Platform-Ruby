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
# package org.allbinary.logic.visual.dhtml.style.css.property

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property

class CssProperty
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :propertyName, :cssPropertyValues

    def jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @propertyName = nil unless instance_variable_defined?(:@propertyName)
        @cssPropertyValues = nil unless instance_variable_defined?(:@cssPropertyValues)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty_1(*args)
        else raise ArgumentError, "No constructor of CssProperty takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty_1_1(name)
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty
        @propertyName = name
        @cssPropertyValues = CssPropertyValues.new()
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty_1_2(node)
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssProperty
        propertyNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, node.getChildNodes())
        @propertyName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(propertyNode)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().STYLE)
            @logUtil.putF("Name: " + self.getName(), self, "CssProperty()")
        end
        propertyValuesNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(CssPropertyData.getInstance().VALUES, node.getChildNodes())
        @cssPropertyValues = CssPropertyValues.new(propertyValuesNode)
    end
    

    def getName()
        return @propertyName
    end
    java_overload :getName, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(CssPropertyData.getInstance().NAME, @propertyName)
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("CssView HashMap: " + hashMap.to_s, self, "toXmlNode()")
        end
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, CssPropertyData.getInstance().NAME, @propertyName)
        node.appendChild(@cssPropertyValues.toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomData, "org/allbinary/data/tree/dom/DomData" unless const_defined?(:DomData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :CssPropertyData, "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyData" unless const_defined?(:CssPropertyData, false)
autoload :CssPropertyValues, "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyValues" unless const_defined?(:CssPropertyValues, false)

end; end; end; end; end; end; end; end

