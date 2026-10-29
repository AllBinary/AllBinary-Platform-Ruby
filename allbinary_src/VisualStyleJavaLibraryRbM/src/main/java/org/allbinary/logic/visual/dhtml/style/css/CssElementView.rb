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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class CssElementView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :TITLE, :DESCRIPTION, :value, :title, :description, :cssElementVector, :cssPropertyVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @TITLE = "title"
        @DESCRIPTION = "description"
        @value = nil
        @title = nil
        @description = nil
        @cssElementVector = nil
        @cssPropertyVector = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @cssPropertyVector = BasicArrayListD.new()
        stringUtil = StringUtil.getInstance()
        @title = stringUtil.EMPTY_STRING
        @description = stringUtil.EMPTY_STRING
        @value = stringUtil.EMPTY_STRING
    end
    

    def constructor1(node)
        initialize_fields
        begin
            valueNode = DomSearchHelper.getNode(DomData::VALUE, node.getChildNodes())
            @value = DomNodeHelper.getTextNodeValue(valueNode)
            titleValueNode = DomSearchHelper.getNodeNoThrow(@TITLE, node.getChildNodes())
            if titleValueNode != nil
                @title = DomNodeHelper.getTextNodeValue(titleValueNode)
            else
                stringUtil = StringUtil.getInstance()
                @title = stringUtil.EMPTY_STRING
            end
            descriptionValueNode = DomSearchHelper.getNodeNoThrow(@DESCRIPTION, node.getChildNodes())
            if descriptionValueNode != nil
                @description = DomNodeHelper.getTextNodeValue(descriptionValueNode)
            else
                @description = StringUtil.getInstance().EMPTY_STRING
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(StringMaker.new().append("Value: ").append(@value).append("\nTitle: ").append(@title).append("\nDescription: ").append(@description).to_s, self, @commonStrings.CONSTRUCTOR)
            end
            cssElementStyleNodeVector = DomSearchHelper.getAllNodes(CssElementData.getInstance().NAME, node.getChildNodes())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Child Css Elements: " + (cssElementStyleNodeVector.size()).to_s, self, "CssElementView()")
            end
            @cssElementVector = CssElementsValidationFactory.getInstance(cssElementStyleNodeVector)
            nodeList = node.getChildNodes()
            @cssPropertyVector = CssPropertiesValidationFactory.getInstance(nodeList)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(StringMaker.new().append("Value: ").append(@value).append("\nTitle: ").append(@title).append("\nDescription: ").append(@description).to_s, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise StandardError.new("CssElementView")
        end
    end
    

    def getValue()
        return @value
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(DomData::VALUE, @value)
        hashMap.put(@TITLE, @title)
        hashMap.put(@DESCRIPTION, @description)
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("CssView HashMap: " + hashMap.to_s, self, "toXmlNode")
        end
        node = ModDomHelper.createNodeWithValueNodes(document, CssElementData.getInstance().NAME, hashMap)
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
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertiesValidationFactory"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/visual/dhtml/style/css/CssElementData"
require "org/allbinary/logic/visual/dhtml/style/css/CssElementsValidationFactory"

