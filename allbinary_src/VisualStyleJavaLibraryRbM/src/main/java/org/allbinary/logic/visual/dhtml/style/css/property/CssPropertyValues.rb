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
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property

class CssPropertyValues
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :propertyValueVector

    def jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyValues
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @propertyValueVector = nil unless instance_variable_defined?(:@propertyValueVector)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyValues_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyValues_1(*args)
        else raise ArgumentError, "No constructor of CssPropertyValues takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyValues_0()
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyValues
        @propertyValueVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyValues_1(node)
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyValues
        indexPropertyValueHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @propertyValueVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        cssPropertyNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(CssPropertyValueData.getInstance().NAME, node.getChildNodes())
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().STYLE)
            @logUtil.putF("Number Of Properties: " + (cssPropertyNodeVector.size()).to_s, self, "CssProperties()")
        end
        size = cssPropertyNodeVector.size()
        (0...size).each do |index|
            cssPropertyValueNode = cssPropertyNodeVector.get(index)
            valueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, cssPropertyValueNode.getChildNodes())
            propertyValue = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(valueNode)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().STYLE)
                @logUtil.putF("Property Value: " + propertyValue, self, "CssProperties()")
            end
            indexNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::DataPackage::Tree::Dom::DomData::INDEX, cssPropertyValueNode.getChildNodes())
            indexValue = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(indexNode)
            indexPropertyValueHashMap.put(indexValue, propertyValue)
        end
        size2 = indexPropertyValueHashMap.keySet().size()
        (0...size2).each do |index|
            indexInt = index
            propertyValue = indexPropertyValueHashMap.get(indexInt.to_s)
            @propertyValueVector.add(propertyValue)
        end
    end
    

    def toHashMap()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        cssPropertyValueData = CssPropertyValueData.getInstance()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = @propertyValueVector.size()
        index = 0
        while index < size
            value = @propertyValueVector.get(index)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(cssPropertyValueData.NAME)
            stringBuffer.append(commonSeps.BRACKET_OPEN)
            stringBuffer.appendint(index)
            stringBuffer.append(commonSeps.BRACKET_CLOSE)
            hashMap.put(stringBuffer.to_s, value)
            index += 1
            index += 1
        end
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            hashMap = self.toHashMap()
            @logUtil.putF("CssPropertyValues HashMap: " + hashMap.to_s, self, "toXmlNode()")
        end
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueIndexNodes(document, CssPropertyData.getInstance().VALUES, CssPropertyValueData.getInstance().NAME, @propertyValueVector)
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
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :CssPropertyData, "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyData" unless const_defined?(:CssPropertyData, false)
autoload :CssPropertyValueData, "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyValueData" unless const_defined?(:CssPropertyValueData, false)

end; end; end; end; end; end; end; end

