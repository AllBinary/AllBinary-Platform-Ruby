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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig

class TransformInfoObjectConfig
    include TransformInfoObjectConfigInterface
    attr_accessor :logUtil, :commonStrings, :ownerTransformInfoInterface, :document, :outputTypeName

    def jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @ownerTransformInfoInterface = nil unless instance_variable_defined?(:@ownerTransformInfoInterface)
        @document = nil unless instance_variable_defined?(:@document)
        @outputTypeName = nil unless instance_variable_defined?(:@outputTypeName)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig_1(*args)
        when 2 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig_2(*args)
        when 3 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig_3(*args)
        else raise ArgumentError, "No constructor of TransformInfoObjectConfig takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig_1(transformInfoInterface)
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig
        @ownerTransformInfoInterface = transformInfoInterface
        self.createDocument()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if @ownerTransformInfoInterface != nil
                stringBuffer.append(@ownerTransformInfoInterface.getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            stringBuffer.append("\nConstructed with document: ")
            stringBuffer.append(self.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "Constructor(TransformInfoInterface)")
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig_2(transformInfoInterface, document)
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig
        @ownerTransformInfoInterface = transformInfoInterface
        @document = document
        node = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(::Org::Allbinary::Logic::Io::OutputTypeData.getInstance().NAME, self.getRootNode().getChildNodes())
        if node != nil
            self.setOutputTypeName(::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(node))
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if @ownerTransformInfoInterface != nil
                stringBuffer.append(@ownerTransformInfoInterface.getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            stringBuffer.append("\nConstructed with document: ")
            stringBuffer.append(self.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "Constructor(TransformInfoInterface, Document)")
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig_3(transformInfoInterface, name, type)
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfig
        @ownerTransformInfoInterface = transformInfoInterface
        self.createDocument()
        configNameAttr = @document.createAttribute(TransformInfoObjectConfigData.getInstance().NAME)
        configNameAttr.setValue(name)
        objectConfigNode = @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
        objectConfigNode.appendChild(configNameAttr)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if @ownerTransformInfoInterface != nil
                stringBuffer.append(@ownerTransformInfoInterface.getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            stringBuffer.append("\nConstructed with document: ")
            stringBuffer.append(self.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "Constructor(TransformInfoInterface, name, type)")
        end
    end
    

    def createDocument()
        @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        objectConfigNode = @document.createElement(TransformInfoObjectConfigData.getInstance().NAME)
        @document.appendChild(objectConfigNode)
    end
    java_overload :createDocument, 0
    

    def getTransformInfoInterface()
        return @ownerTransformInfoInterface
    end
    java_overload :getTransformInfoInterface, 0
    

    # throws Exception
    def toXmlDoc()
        return @document
    end
    java_overload :toXmlDoc, 0
    

    def setDocument(document)
        @document = document
    end
    java_overload :setDocument, 1
    

    def containsView(transformInfoInterface)
        objectConfigNode = @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
        viewNodeList = objectConfigNode.getChildNodes()
        numberOfViews = viewNodeList.getLength()
        (0...numberOfViews).each do |index|
            viewNode = viewNodeList.item(index)
            viewAttributes = viewNode.getAttributes()
            attrNode = viewAttributes.getNamedItem(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME)
            if transformInfoInterface.getName().compareTo(attrNode.getValue()) == 0
                return true
            end
        end
        return false
    end
    java_overload :containsView, 1
    

    # throws Exception
    def getTemplateAttributes()
        componentNode = @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
        return componentNode.getAttributes()
    end
    java_overload :getTemplateAttributes, 0
    

    # throws Exception
    def getName()
        attrNode = self.getTemplateAttributes().getNamedItem(TransformInfoObjectConfigData.getInstance().NAME)
        return attrNode.getValue()
    end
    java_overload :getName, 0
    

    # throws Exception
    def setName(name)
        attrNode = self.getTemplateAttributes().getNamedItem(TransformInfoObjectConfigData.getInstance().NAME)
        attrNode.setValue(name)
    end
    java_overload :setName, 1
    

    # throws Exception
    def getNodeVector(nodeName)
        componentsNodeList = @document.getElementsByTagName(nodeName)
        if componentsNodeList != nil && componentsNodeList.getLength() > 0
            viewNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME, componentsNodeList.item(0).getChildNodes())
            numberOfViews = viewNodeVector.size()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Number Of ")
                stringBuffer.append(nodeName)
                stringBuffer.append(" Nodes: ")
                stringBuffer.appendint(numberOfViews)
                @logUtil.putF(stringBuffer.to_s, self, "getNodeVector(nodename)")
            end
            return viewNodeVector
        end
        return ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    java_overload :getNodeVector, 1
    

    # throws Exception
    def getTransformDomNodes_j1(nodeName)
        viewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        viewNodeVector = self.getNodeVector(nodeName)
        size = viewNodeVector.size()
        (0...size).each do |index|
            viewNode = viewNodeVector.get(index)
            viewVector.add(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoDomNode.new(viewNode))
        end
        return viewVector
    end
    

    # throws Exception
    def getTransforms_j1(nodeName)
        viewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        viewNodeVector = self.getNodeVector(nodeName)
        size = viewNodeVector.size()
        (0...size).each do |index|
            viewNode = viewNodeVector.get(index)
            viewVector.add(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoDomNode.new(viewNode).getTransformInfoInterface())
        end
        return viewVector
    end
    

    # throws Exception
    def getTransformsGroup(group)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Started: " + group, self, "getTransformsGroup()")
        end
        viewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        _GROUP = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().GROUP
        componentsNodeList = @document.getElementsByTagName(_GROUP)
        if componentsNodeList != nil && componentsNodeList.getLength() > 0
            componentsNode = componentsNodeList.item(0)
            length = componentsNodeList.getLength()
            (0...length).each do |index|
                node = componentsNodeList.item(index)
                attributes = node.getAttributes()
                attrNode = attributes.getNamedItem(_GROUP)
                value = attrNode.getValue()
                if (value <=> group) == 0
                    componentsNode = node
                    break
                end
            end
            viewNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME, componentsNode.getChildNodes())
            numberOfViews = viewNodeVector.size()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Number Of Nodes: " + (numberOfViews).to_s, self, "getTransformsGroup()")
            end
            size = viewNodeVector.size()
            (0...size).each do |index|
                viewNode = viewNodeVector.get(index)
                viewVector.add(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoDomNode.new(viewNode))
            end
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                if componentsNodeList == nil
                    @logUtil.putF("Number Of Nodes: NULL", self, "getTransformsGroup()")
                else
                    @logUtil.putF("Number Of Nodes: 0", self, "getTransformsGroup()")
                end
            end
        end
        return viewVector
    end
    java_overload :getTransformsGroup, 1
    

    # throws Exception
    def getTransformDomNodes_j0()
        return self.getTransformDomNodes(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().GROUP)
    end

    def getTransformDomNodes(*java_overload_args)
        return getTransformDomNodes_j1(*java_overload_args) if java_overload_args.length == 1
        return getTransformDomNodes_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method getTransformDomNodes takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getTransforms_j0()
        return self.getTransforms(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().NAME)
    end

    def getTransforms(*java_overload_args)
        return getTransforms_j1(*java_overload_args) if java_overload_args.length == 1
        return getTransforms_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method getTransforms takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getGroupTransforms()
        return self.getTransforms(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().GROUP)
    end
    java_overload :getGroupTransforms, 0
    

    # throws Exception
    def getParentTransforms()
        return self.getTransforms(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().PARENT)
    end
    java_overload :getParentTransforms, 0
    

    def getRootNode()
        return @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
    end
    java_overload :getRootNode, 0
    

    def setOutputTypeName(outputTypeName)
        @outputTypeName = outputTypeName
    end
    java_overload :setOutputTypeName, 1
    

    # throws Exception
    def getOutputTypeName()
        return @outputTypeName
    end
    java_overload :getOutputTypeName, 0
    

    # throws Exception
    def getInputOutputTypeName()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().NAME, self.getRootNode().getChildNodes())
        return ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(node)
    end
    java_overload :getInputOutputTypeName, 0
    

    # throws Exception
    def getInputOutputTypeFile()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().FILE, self.getRootNode().getChildNodes())
        return ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(node)
    end
    java_overload :getInputOutputTypeFile, 0
    

    # throws Exception
    def getImportUriPath()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Logic::Visual::Transform::Template::XslData.getInstance().ROOT_IMPORT_URI, self.getRootNode().getChildNodes())
        return ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(node)
    end
    java_overload :getImportUriPath, 0
    

    def toString()
        begin
            if @document != nil
                return ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(@document)
            else
                return nil
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.putF("DOM Document error", self, @commonStrings.TOSTRING)
            end
            return nil
        end
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData" unless const_defined?(:InputOutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :OutputTypeData, "org/allbinary/logic/io/OutputTypeData" unless const_defined?(:OutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoDomNode, "org/allbinary/logic/visual/transform/info/TransformInfoDomNode" unless const_defined?(:TransformInfoDomNode, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfosData, "org/allbinary/logic/visual/transform/info/TransformInfosData" unless const_defined?(:TransformInfosData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; autoload :XslData, "org/allbinary/logic/visual/transform/template/XslData" unless const_defined?(:XslData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Attr, "org/w3c/dom/Attr" unless const_defined?(:Attr, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NamedNodeMap, "org/w3c/dom/NamedNodeMap" unless const_defined?(:NamedNodeMap, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false)

end; end; end; end; end; end; end

