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

# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/http/request/RequestParams"

#containing string values and other hashmaps of the like
class NameSpaceRequestParams < RequestParams
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("Constructing empty", self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def constructor1(httpServletRequest)
        method(:initialize).super_method.call(httpServletRequest)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("Constructing from HttpServletRequest", self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def constructor1(pageContext)
        method(:initialize).super_method.call(pageContext)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
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
            propertyNode = ModDomHelper.createTextNode(document, propertyName, propertyValue)
            node.appendChild(propertyNode)
        end
        return node
    end
    

    # throws Exception
    def createPackageMultiNode(document, nameSpaceRequestParam, packageName, packagePropertiesHashMap)
        beginIndex = (packageName.index("[") || -1)
        indexValue = packageName[beginIndex + 1...packageName.length - 1]
        multiElementPackage = packageName[0...beginIndex]
        selectedValue = nameSpaceRequestParam.getValue()
        propertyValue = packagePropertiesHashMap.get(DomData::VALUE)
        if (propertyValue <=> NameSpaceRequestParamData::VALUE) != 0
            selectedValue = propertyValue
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nAppending Multinode Element: " + multiElementPackage + "[" + indexValue + "] " + selectedValue, self, "createPackageMultiNode")
        end
        nextNode = ModDomHelper.createNameValueNodes(document, multiElementPackage, selectedValue)
        indexNode = ModDomHelper.createTextNode(document, DomData::INDEX, indexValue)
        nextNode.appendChild(indexNode)
        return nextNode
    end
    

    # throws Exception
    def getRootNode(rootElementPackage, packagePropertiesHashMap, document)
        rootNode = DomSearchHelper.getNodeNoThrow(rootElementPackage, document.getChildNodes())
        if rootNode == nil
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nAppending Document Root: " + "\nElementName: " + rootElementPackage + "\nProperties: " + packagePropertiesHashMap.to_s, self, "getRootNode")
            end
            node = self.createPackageNode(document, rootElementPackage, packagePropertiesHashMap)
            document.appendChild(node)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nAppended Document Created: " + XmlDocumentHelper.toString(document), self, "getRootNode")
            end
            return node
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nUsing Existing Root Node", self, "getRootNode")
            end
            return rootNode
        end
    end
    

    # throws Exception
    def addNewProperties(document, node, nextPackagePropertiesHashMap)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF(StringMaker.new().append("\nAdding Any New Properties: ").append(nextPackagePropertiesHashMap.to_s).append("\nto node: ").append(node.getNodeName()).to_s, self, "addNewProperties")
        end
        propertyNameSet = nextPackagePropertiesHashMap.keySet()
        propertyNameSetArray = propertyNameSet.toArray()
        size = propertyNameSetArray.length
        (0...size).each do |index|
            nextPropertyName = propertyNameSetArray[index]
            propertyValue = StringUtil.getInstance().getNonNull(nextPackagePropertiesHashMap.get(nextPropertyName))
            valueNode = DomSearchHelper.getNodeNoThrow(nextPropertyName, node.getChildNodes())
            if valueNode != nil
                existingElementNodeTextNodeValue = DomNodeHelper.getTextNodeValue(valueNode)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nIf property: \"" + nextPropertyName + " is the same as:\n" + "Node: " + (node.getNodeName()).to_s + " then: " + propertyValue + "==" + existingElementNodeTextNodeValue, self, "addNewProperties")
                end
                if (propertyValue <=> existingElementNodeTextNodeValue) != 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("At least one Property from NameSpaceRequest Package was different from Node", self, "addNewProperties")
                    end
                    raise StandardError.new("Property Modifications Should Not Occur")
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Adding a new Property: " + nextPropertyName + "=" + propertyValue, self, "addNewProperties")
                end
                newPropertyNode = ModDomHelper.createTextNode(document, nextPropertyName, propertyValue)
                node.appendChild(newPropertyNode)
            end
        end
        return node
    end
    

    # throws Exception
    def isElementValueTextNodeEqual(nextPackagePropertiesHashMap, node)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nComparing the value property in: " + nextPackagePropertiesHashMap.to_s + "\nto node child leaves of node: " + (node.getNodeName()).to_s, self, "isElementValueTextNodeEqual")
        end
        propertyValue = nextPackagePropertiesHashMap.get(DomData::VALUE)
        valueNode = DomSearchHelper.getNodeNoThrow(DomData::VALUE, node.getChildNodes())
        if valueNode != nil
            existingElementNodeTextNodeValue = DomNodeHelper.getTextNodeValue(valueNode)
            if (propertyValue <=> existingElementNodeTextNodeValue) == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Value Node is the same", self, "isElementValueTextNodeEqual")
                end
                return true
            end
        else
            return true
        end
        return false
    end
    

    # throws Exception
    def isElementValueTextNodeUnique(nextPackagePropertiesHashMap, elementNodeVector)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
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
    

    # throws Exception
    def addChildren(document, rootNode, nameSpaceRequestParam)
        node = rootNode
        packageVector = nameSpaceRequestParam.getPackages()
        size = packageVector.size()
        (1...size).each do |index|
            nextPackageName = packageVector.get(index)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF(StringMaker.new().append("\nTrying to Add Child to Node: ").append(node.getNodeName()).append("\nwith new PackageName: ").append(nextPackageName).to_s, self, "addChildren")
            end
            nextPackagePropertiesHashMap = nameSpaceRequestParam.getPackageProperties(index)
            elementNodeVector = DomSearchHelper.getAllNodesNoThrow(nextPackageName, node.getChildNodes())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nDocument Contains " + (elementNodeVector.size()).to_s + " Node(s) With Same Name", self, "addChildren")
            end
            isElementValueTextNodeUniqueIndex = self.isElementValueTextNodeUnique(nextPackagePropertiesHashMap, elementNodeVector)
            if (elementNodeVector.size() == 0 || isElementValueTextNodeUniqueIndex == -1) && !nextPackageName.end_with?(CommonSeps.getInstance().BRACKET_CLOSE)
                nextNode = self.createPackageNode(document, nextPackageName, nextPackagePropertiesHashMap)
                node.appendChild(nextNode)
                node = nextNode
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nAppended Package: " + (node.getNodeName()).to_s, self, "addChildren")
                    @logUtil.putF("\nAppended Document Created: " + XmlDocumentHelper.toString(document), self, "addChildren")
                end
            elsif nextPackageName.end_with?(CommonSeps.getInstance().BRACKET_CLOSE)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Package is MultiNode: just append", self, "addChildren")
                end
                nextNode = self.createPackageMultiNode(document, nameSpaceRequestParam, nextPackageName, nextPackagePropertiesHashMap)
                node.appendChild(nextNode)
                node = nextNode
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nAppended Multinode Element: " + XmlDocumentHelper.toString(document), self, "addChildren")
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Value Node already exists: Now compare (properties to leaf nodes)", self, "addChildren")
                end
                nodeNameDuplicateNode = elementNodeVector.get(isElementValueTextNodeUniqueIndex)
                node = self.addNewProperties(document, nodeNameDuplicateNode, nextPackagePropertiesHashMap)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("\nDuplicate Node Found: Moving to next child ^", self, "addChildre")
                end
            end
        end
        return document
    end
    

    # throws Exception
    def addNameSpace(key, value, document)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF(StringMaker.new().append("NameSpace key: ").append(key).append(" Value: ").append(value).to_s, self, "addNameSpace")
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
    

    # throws Exception
    def toHashMap()
        document = DomDocumentHelper.create()
        hashMap = StdUtil.getInstance().createHashMap()
        keys = self.getMap().keySet()
        keyArray = keys.toArray()
        keySize = keyArray.length
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpace Request Size: " + (keys.size()).to_s, self, "toHashMap")
        end
        (0...keySize).each do |i|
            key = keyArray[i]
            anyType = self.getMap().get(key)
            className = anyType.class.name
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("Request Param Class: " + className, self, "toHashMap")
            end
            if self.getMap().get(key).is_a?(String)
                value = self.getMap().get(key)
                if (key.index(NameSpaceRequestParamData::NAME) || -1) < 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("Not NameSpace key: " + key + " Value: " + value, self, "toHashMap()")
                    end
                    hashMap.put(String.new(key), String.new(value))
                else
                    document = self.addNameSpace(String.new(key), String.new(value), document)
                end
            elsif self.getMap().get(key).is_a?(Array)
                values = self.getMap().get(key)
                if (key.index(NameSpaceRequestParamData::NAME) || -1) < 0
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("Not NameSpace key: " + key + " Value: " + (values[0]).to_s, self, "toHashMap()")
                    end
                    hashMap.put(String.new(key), String.new(values[0]))
                else
                    document = self.addNameSpace(String.new(key), String.new(values[0]), document)
                end
            end
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpaceRequestParams: " + self.getMap().to_s + "\ntoHashMap(): " + hashMap.to_s + "\nDocument Created: " + XmlDocumentHelper.toString(document), self, "toHashMap()")
        end
        hashMap.put(NameSpaceRequestParamData::DOCUMENT, document)
        return hashMap
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/http/request/NameSpaceRequestParam"
require "org/allbinary/logic/communication/http/request/NameSpaceRequestParamData"

