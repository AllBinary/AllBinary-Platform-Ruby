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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class CssProperty
    include DomNodeInterface
    attr_accessor :logUtil, :propertyName, :cssPropertyValues

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @propertyName = nil
        @cssPropertyValues = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(name)
        initialize_fields
        @propertyName = name
        @cssPropertyValues = CssPropertyValues.new()
    end
    

    def constructor1(node)
        initialize_fields
        propertyNode = DomSearchHelper.getNode(DomData::VALUE, node.getChildNodes())
        @propertyName = DomNodeHelper.getTextNodeValue(propertyNode)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().STYLE)
            @logUtil.putF("Name: " + self.getName(), self, "CssProperty()")
        end
        propertyValuesNode = DomSearchHelper.getNode(CssPropertyData.getInstance().VALUES, node.getChildNodes())
        @cssPropertyValues = CssPropertyValues.new(propertyValuesNode)
    end
    

    def getName()
        return @propertyName
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(CssPropertyData.getInstance().NAME, @propertyName)
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("CssView HashMap: " + hashMap.to_s, self, "toXmlNode()")
        end
        node = ModDomHelper.createNameValueNodes(document, CssPropertyData.getInstance().NAME, @propertyName)
        node.appendChild(@cssPropertyValues.toXmlNode(document))
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyData"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyValues"

