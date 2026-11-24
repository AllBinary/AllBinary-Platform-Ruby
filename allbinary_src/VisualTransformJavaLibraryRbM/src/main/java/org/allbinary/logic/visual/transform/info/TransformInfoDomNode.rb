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
# package org.allbinary.logic.visual.transform.info

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoDomNode
    attr_accessor :logUtil, :transformInfoInterface, :mappedName

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoDomNode
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
        @mappedName = nil unless instance_variable_defined?(:@mappedName)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_1(*args)
        when 2 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_2(*args)
        else raise ArgumentError, "No constructor of TransformInfoDomNode takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_1_2(*java_overload_args)
    end

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_2(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String))
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_2_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_1_1(node)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoDomNode
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Constructing TransformInfo From TransformInfoDomNode: " + (node.getNodeName()).to_s, self, "TransformInfoDomNode(Node node)")
        end
        transformInfoData = TransformInfoData.getInstance()
        attributes = node.getAttributes()
        attrNode = attributes.getNamedItem(transformInfoData.NAME)
        name = attrNode.getValue()
        nodeList = node.getChildNodes()
        if nodeList.getLength() > 1
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Constructing Complete TransformInfo Node For: ")
                stringBuffer.append(name)
                stringBuffer.append(" with ")
                stringBuffer.appendint(((nodeList.getLength()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" children")
                @logUtil.putF(stringBuffer.to_s, self, "TransformInfoObjectConfigComponent(Node node)")
            end
            objectFileNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.OBJECTFILENAME, nodeList)
            objectFileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(objectFileNameNode)
            objectConfigFileNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.OBJECTCONFIGFILENAME, nodeList)
            objectConfigFileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(objectConfigFileNameNode)
            templateFileNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.TEMPLATEFILENAME, nodeList)
            templateFileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(templateFileNameNode)
            dataFileNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.DATAFILENAME, nodeList)
            dataFileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(dataFileNameNode)
            @transformInfoInterface = TransformInfo.new(name, objectFileName, objectConfigFileName, templateFileName, dataFileName)
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Constructing Partial TransformInfo Node For: ")
                stringBuffer.append(name)
                stringBuffer.append(" with ")
                stringBuffer.appendint(((nodeList.getLength()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" children")
                @logUtil.putF(stringBuffer.to_s, self, "TransformInfoObjectConfigComponent(Node node)")
            end
            @transformInfoInterface = TransformInfo.new(name)
        end
        templateAttrNode = attributes.getNamedItem(transformInfoData.MAPPED)
        if templateAttrNode != nil
            @mappedName = templateAttrNode.getValue()
        else
            @mappedName = self.getTransformInfoInterface().getName()
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_1_2(transformInfoInterface)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoDomNode
        @transformInfoInterface = transformInfoInterface
        @mappedName = transformInfoInterface.getName()
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_2_1(transformInfoInterface, mappedName)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoDomNode
        @transformInfoInterface = transformInfoInterface
        @mappedName = mappedName
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNode_2_2(name, mappedName)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoDomNode
        @transformInfoInterface = TransformInfo.new(name)
        @mappedName = mappedName
    end
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    

    def getMappedName()
        return @mappedName
    end
    

    def getReplaceKey()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("<transform:component name=\"")
        stringBuffer.append("body")
        stringBuffer.append("\"/>")
        key = stringBuffer.to_s
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Component Key: " + key, self, "getReplaceKey()")
        end
        return key
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Attr, "org/w3c/dom/Attr" unless const_defined?(:Attr, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NamedNodeMap, "org/w3c/dom/NamedNodeMap" unless const_defined?(:NamedNodeMap, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo" unless const_defined?(:TransformInfo, false)
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false)
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false)

end; end; end; end; end; end

