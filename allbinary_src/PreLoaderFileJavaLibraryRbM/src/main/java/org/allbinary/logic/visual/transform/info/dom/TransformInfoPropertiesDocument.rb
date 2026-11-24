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
# package org.allbinary.logic.visual.transform.info.dom

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module Dom

class TransformInfoPropertiesDocument
    attr_accessor :logUtil, :document

    def jfields_org_allbinary_logic_visual_transform_info_dom_TransformInfoPropertiesDocument
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @document = nil unless instance_variable_defined?(:@document)
    end
    

    def initialize(filePath)
        jfields_org_allbinary_logic_visual_transform_info_dom_TransformInfoPropertiesDocument
        xmlFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(filePath)
        @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentFileHelper.createDocument(xmlFile)
    end
    

    def toTransformInfoPropertiesHashMap()
        begin
            transformInfoPropertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            transformInfosNode = @document.getElementsByTagName(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().NAME).item(0)
            transformInfosChildNodeList = transformInfosNode.getChildNodes()
            transformInfoNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME, transformInfosChildNodeList)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Size: " + (transformInfoNodeVector.size()).to_s, self, "toTransformInfoPropertiesHashMap()")
            end
            size = transformInfoNodeVector.size()
            node = nil
            transformInfoProperties = nil
            (0...size).each do |index|
                node = transformInfoNodeVector.get(index)
                transformInfoProperties = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoPropertiesFactory.getInstance().getInstance(node)
                transformInfoPropertiesHashMap.put(transformInfoProperties.getName(), transformInfoProperties)
            end
            return transformInfoPropertiesHashMap
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "toTransformInfoPropertiesHashMap()", e)
            end
            return nil
        end
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentFileHelper, "org/allbinary/data/tree/dom/document/DomDocumentFileHelper" unless const_defined?(:DomDocumentFileHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoProperties, "org/allbinary/logic/visual/transform/info/TransformInfoProperties" unless const_defined?(:TransformInfoProperties, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoPropertiesFactory, "org/allbinary/logic/visual/transform/info/TransformInfoPropertiesFactory" unless const_defined?(:TransformInfoPropertiesFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfosData, "org/allbinary/logic/visual/transform/info/TransformInfosData" unless const_defined?(:TransformInfosData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

