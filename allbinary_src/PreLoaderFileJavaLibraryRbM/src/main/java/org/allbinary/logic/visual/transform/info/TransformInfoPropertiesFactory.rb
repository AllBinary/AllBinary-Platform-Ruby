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


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoPropertiesFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoPropertiesFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformInfoPropertiesFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoPropertiesFactory
    end
    

    # throws Exception
    def getInstance(node)
        transformInfoChildNodeList = node.getChildNodes()
        transformInfoData = TransformInfoData.getInstance()
        attributes = node.getAttributes()
        attrNode = attributes.getNamedItem(transformInfoData.NAME)
        name = attrNode.getValue()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).to_s + " View Name: " + name, self, "toTransformInfoPropertiesHashMap()")
        end
        labelNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(transformInfoData.LABEL, transformInfoChildNodeList)
        label = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodesValue(labelNode)
        if label == nil
            label = name
        end
        descriptionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.DESCRIPTION, transformInfoChildNodeList)
        description = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodesValue(descriptionNode)
        objectFileNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.OBJECTFILENAME, transformInfoChildNodeList)
        objectFileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(objectFileNode)
        objectConfigFileNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.OBJECTCONFIGFILENAME, transformInfoChildNodeList)
        objectConfigFileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(objectConfigFileNode)
        templateFileNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(transformInfoData.TEMPLATEFILENAME, transformInfoChildNodeList)
        templateFileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(templateFileNode)
        transformInfoProperties = TransformInfoProperties.new(name, label, description, objectFileName, objectConfigFileName, templateFileName)
        return transformInfoProperties
    end

    def self.instance()
        TransformInfoPropertiesFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfoPropertiesFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfoPropertiesFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoPropertiesFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Attr, "org/w3c/dom/Attr" unless const_defined?(:Attr, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NamedNodeMap, "org/w3c/dom/NamedNodeMap" unless const_defined?(:NamedNodeMap, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false)
autoload :TransformInfoProperties, "org/allbinary/logic/visual/transform/info/TransformInfoProperties" unless const_defined?(:TransformInfoProperties, false)

begin
    TransformInfoPropertiesFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

