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
# package org.allbinary.logic.communication.http.request

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/http/request/RequestParams"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request

#containing string values and other hashmaps of the like
class NameSpaceRequestParams < RequestParams
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_http_request_NameSpaceRequestParams
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_0(*args)
        when 1 then jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_1(*args)
        else raise ArgumentError, "No constructor of NameSpaceRequestParams takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_0()
        NameSpaceRequestParams.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_communication_http_request_NameSpaceRequestParams
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("Constructing empty", self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_1_1(httpServletRequest)
        NameSpaceRequestParams.superclass.instance_method(:initialize).bind(self).call(httpServletRequest)
        jfields_org_allbinary_logic_communication_http_request_NameSpaceRequestParams
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("Constructing from HttpServletRequest", self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def jnew_org_allbinary_logic_communication_http_request_NameSpaceRequestParams_1_2(pageContext)
        NameSpaceRequestParams.superclass.instance_method(:initialize).bind(self).call(pageContext)
        jfields_org_allbinary_logic_communication_http_request_NameSpaceRequestParams
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("Constructing from PageContext", self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    def createPackageNode(document, packageName, packagePropertiesHashMap)
        node = document.createElement(packageName)
        propertyKeySet = packagePropertiesHashMap.keySet()
        propertyKeySetArray = propertyKeySet.toArray()
        size = propertyKeySetArray.length
        (0...size).each do |index|
            propertyName = propertyKeySetArray[index]
            propertyValue = packagePropertiesHashMap.get(propertyName)
            propertyNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, propertyName, propertyValue)
            node.appendChild(propertyNode)
        end
        return node
    end
    java_overload :createPackageNode, 3
    

    # throws Exception
    def createPackageMultiNode(document, nameSpaceRequestParam, packageName, packagePropertiesHashMap)
        beginIndex = (packageName.index("[") || -1)
        indexValue = packageName[beginIndex + 1...packageName.length - 1]
        multiElementPackage = packageName[0...beginIndex]
        selectedValue = nameSpaceRequestParam.getValue()
        propertyValue = packagePropertiesHashMap.get(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE)
        if (propertyValue <=> NameSpaceRequestParamData::VALUE) != 0
            selectedValue = propertyValue
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nAppending Multinode Element: " + multiElementPackage + "[" + indexValue + "] " + selectedValue, self, "createPackageMultiNode")
        end
        nextNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, multiElementPackage, selectedValue)
        indexNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, ::Org::Allbinary::DataPackage::Tree::Dom::DomData::INDEX, indexValue)
        nextNode.appendChild(indexNode)
        return nextNode
    end
    java_overload :createPackageMultiNode, 4
    

    # throws Exception
    def getRootNode(rootElementPackage, packagePropertiesHashMap, document)
        rootNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(rootElementPackage, document.getChildNodes())
        if rootNode == nil
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nAppending Document Root: " + "\nElementName: " + rootElementPackage + "\nProperties: " + packagePropertiesHashMap.to_s, self, "getRootNode")
            end
            node = self.createPackageNode(document, rootElementPackage, packagePropertiesHashMap)
            document.appendChild(node)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nAppended Document Created: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document), self, "getRootNode")
            end
            return node
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nUsing Existing Root Node", self, "getRootNode")
            end
            return rootNode
        end
    end
    java_overload :getRootNode, 3
    

    # throws Exception
    def addNewProperties(document, node, nextPackagePropertiesHashMap)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("\nAdding Any New Properties: ").append(nextPackagePropertiesHashMap.to_s).append("\nto node: ").append(node.getNodeName()).to_s, self, "addNewProperties")
        end
        propertyNameSet = nextPackagePropertiesHashMap.keySet()
        propertyNameSetArray = propertyNameSet.toArray()
        size = propertyNameSetArray.length
        (0...size).each do |index|
            nextPropertyName = propertyNameSetArray[index]
            propertyValue = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(nextPackagePropertiesHashMap.get(nextPropertyName))
            valueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(nextPropertyName, node.getChildNodes())
            if valueNode != nil
                existingElementNodeTextNodeValue = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(valueNode)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nIf property: \"" + nextPropertyName + " is the same as:\n" + "Node: " + (node.getNodeName()).to_s + " then: " + propertyValue + "==" + existingElementNodeTextNodeValue, self, "addNewProperties")
                end
                if (propertyValue <=> existingElementNodeTextNodeValue) != 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("At least one Property from NameSpaceRequest Package was different from Node", self, "addNewProperties")
                    end
                    raise StandardError.new("Property Modifications Should Not Occur")
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Adding a new Property: " + nextPropertyName + "=" + propertyValue, self, "addNewProperties")
                end
                newPropertyNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, nextPropertyName, propertyValue)
                node.appendChild(newPropertyNode)
            end
        end
        return node
    end
    java_overload :addNewProperties, 3
    

    # throws Exception
    def isElementValueTextNodeEqual(nextPackagePropertiesHashMap, node)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nComparing the value property in: " + nextPackagePropertiesHashMap.to_s + "\nto node child leaves of node: " + (node.getNodeName()).to_s, self, "isElementValueTextNodeEqual")
        end
        propertyValue = nextPackagePropertiesHashMap.get(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE)
        valueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, node.getChildNodes())
        if valueNode != nil
            existingElementNodeTextNodeValue = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(valueNode)
            if (propertyValue <=> existingElementNodeTextNodeValue) == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Value Node is the same", self, "isElementValueTextNodeEqual")
                end
                return true
            end
        else
            return true
        end
        return false
    end
    java_overload :isElementValueTextNodeEqual, 2
    

    # throws Exception
    def isElementValueTextNodeUnique(nextPackagePropertiesHashMap, elementNodeVector)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nComparing Properties of: " + (elementNodeVector.size()).to_s + " Nodes", self, "isElementValueTextNodeUnique")
        end
        size = elementNodeVector.size()
        (0...size).each do |index|
            existingElementNode = elementNodeVector.get(index)
            if self.isElementValueTextNodeEqual(nextPackagePropertiesHashMap, existingElementNode)
                return index
            end
        end
        return -1
    end
    java_overload :isElementValueTextNodeUnique, 2
    

    # throws Exception
    def addChildren(document, rootNode, nameSpaceRequestParam)
        node = rootNode
        packageVector = nameSpaceRequestParam.getPackages()
        size = packageVector.size()
        (1...size).each do |index|
            nextPackageName = packageVector.get(index)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("\nTrying to Add Child to Node: ").append(node.getNodeName()).append("\nwith new PackageName: ").append(nextPackageName).to_s, self, "addChildren")
            end
            nextPackagePropertiesHashMap = nameSpaceRequestParam.getPackageProperties(index)
            elementNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodesNoThrow(nextPackageName, node.getChildNodes())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nDocument Contains " + (elementNodeVector.size()).to_s + " Node(s) With Same Name", self, "addChildren")
            end
            isElementValueTextNodeUniqueIndex = self.isElementValueTextNodeUnique(nextPackagePropertiesHashMap, elementNodeVector)
            if (elementNodeVector.size() == 0 || isElementValueTextNodeUniqueIndex == -1) && !nextPackageName.end_with?(::Org::Allbinary::StringPackage::CommonSeps.getInstance().BRACKET_CLOSE)
                nextNode = self.createPackageNode(document, nextPackageName, nextPackagePropertiesHashMap)
                node.appendChild(nextNode)
                node = nextNode
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nAppended Package: " + (node.getNodeName()).to_s, self, "addChildren")
                    @logUtil.putF("\nAppended Document Created: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document), self, "addChildren")
                end
            elsif nextPackageName.end_with?(::Org::Allbinary::StringPackage::CommonSeps.getInstance().BRACKET_CLOSE)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Package is MultiNode: just append", self, "addChildren")
                end
                nextNode = self.createPackageMultiNode(document, nameSpaceRequestParam, nextPackageName, nextPackagePropertiesHashMap)
                node.appendChild(nextNode)
                node = nextNode
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nAppended Multinode Element: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document), self, "addChildren")
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Value Node already exists: Now compare (properties to leaf nodes)", self, "addChildren")
                end
                nodeNameDuplicateNode = elementNodeVector.get(isElementValueTextNodeUniqueIndex)
                node = self.addNewProperties(document, nodeNameDuplicateNode, nextPackagePropertiesHashMap)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nDuplicate Node Found: Moving to next child ^", self, "addChildre")
                end
            end
        end
        return document
    end
    java_overload :addChildren, 3
    

    # throws Exception
    def addNameSpace(key, value, document)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("NameSpace key: ").append(key).append(" Value: ").append(value).to_s, self, "addNameSpace")
        end
        nameSpaceRequestParam = NameSpaceRequestParam.new(key, value)
        packageVector = nameSpaceRequestParam.getPackages()
        size = packageVector.size()
        (0...size).each do |index|
            packageName = packageVector.get(index)
            packagePropertiesHashMap = nameSpaceRequestParam.getPackageProperties(packageVector.indexOf(packageName))
            rootNode = self.getRootNode(packageName, packagePropertiesHashMap, document)
            if index < size - 1
                return self.addChildren(document, rootNode, nameSpaceRequestParam)
            end
        end
        return document
    end
    java_overload :addNameSpace, 3
    

    # throws Exception
    def toHashMap()
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keys = self.getMap().keySet()
        keyArray = keys.toArray()
        keySize = keyArray.length
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpace Request Size: " + (keys.size()).to_s, self, "toHashMap")
        end
        (0...keySize).each do |i|
            key = keyArray[i]
            anyType = self.getMap().get(key)
            className = anyType.class.java_name
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("Request Param Class: " + className, self, "toHashMap")
            end
            if self.getMap().get(key).is_a?(String)
                value = self.getMap().get(key)
                if (key.index(NameSpaceRequestParamData::NAME) || -1) < 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("Not NameSpace key: " + key + " Value: " + value, self, "toHashMap()")
                    end
                    hashMap.put(String.new(key), String.new(value))
                else
                    document = self.addNameSpace(String.new(key), String.new(value), document)
                end
            elsif self.getMap().get(key).is_a?(Array)
                values = self.getMap().get(key)
                if (key.index(NameSpaceRequestParamData::NAME) || -1) < 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("Not NameSpace key: " + key + " Value: " + (values[0]).to_s, self, "toHashMap()")
                    end
                    hashMap.put(String.new(key), String.new(values[0]))
                else
                    document = self.addNameSpace(String.new(key), String.new(values[0]), document)
                end
            end
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpaceRequestParams: " + self.getMap().to_s + "\ntoHashMap(): " + hashMap.to_s + "\nDocument Created: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document), self, "toHashMap()")
        end
        hashMap.put(NameSpaceRequestParamData::DOCUMENT, document)
        return hashMap
    end
    java_overload :toHashMap, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomData, "org/allbinary/data/tree/dom/DomData" unless const_defined?(:DomData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :NameSpaceRequestParam, "org/allbinary/logic/communication/http/request/NameSpaceRequestParam" unless const_defined?(:NameSpaceRequestParam, false)
autoload :NameSpaceRequestParamData, "org/allbinary/logic/communication/http/request/NameSpaceRequestParamData" unless const_defined?(:NameSpaceRequestParamData, false)

end; end; end; end; end; end

