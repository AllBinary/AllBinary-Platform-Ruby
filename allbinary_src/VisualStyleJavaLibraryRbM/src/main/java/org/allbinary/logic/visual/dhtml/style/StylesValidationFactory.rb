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


class StylesValidationFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return StylesValidationFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(document)
        commonStrings = CommonStrings.getInstance()
        nodeList = document.getElementsByTagName(StylesData.getInstance().NAME)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Style Present: " + XmlDocumentHelper.toString(document), self, commonStrings.GET_INSTANCE)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Styles Present: " + (nodeList.getLength()).to_s, self, commonStrings.GET_INSTANCE)
        end
        (0...nodeList.getLength()).each do |index|
            stylesNode = nodeList.item(index)
            styleNodeList = DomSearchHelper.getAllNodes(StyleData.getInstance().NAME, stylesNode.getChildNodes())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Number Of Style Nodes Present: " + (styleNodeList.size()).to_s, self, commonStrings.GET_INSTANCE)
            end
            (0...styleNodeList.size()).each do |styleNodesIndex|
                styleNode = styleNodeList.get(styleNodesIndex)
                cssElementStyleNodeList = DomSearchHelper.getAllNodes(CssElementData.getInstance().NAME, styleNode.getChildNodes())
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Number Of Element Nodes Present: " + (cssElementStyleNodeList.size()).to_s, self, commonStrings.GET_INSTANCE)
                end
                return CssElementsValidationFactory.getInstance(cssElementStyleNodeList)
            end
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("No Style Present", self, commonStrings.GET_INSTANCE)
        end
        return BasicArrayListD.new()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(hashMap)
        stylesDocument = hashMap.get(NameSpaceRequestParamData::DOCUMENT)
        return StylesValidationFactory.getInstance().getInstance(stylesDocument)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/http/request/NameSpaceRequestParamData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/dhtml/style/css/CssElementData"
require "org/allbinary/logic/visual/dhtml/style/css/CssElementsValidationFactory"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/visual/dhtml/style/StyleData"
require "org/allbinary/logic/visual/dhtml/style/StylesData"

class StylesValidationFactory
    @@instance = StylesValidationFactory.new()
end

