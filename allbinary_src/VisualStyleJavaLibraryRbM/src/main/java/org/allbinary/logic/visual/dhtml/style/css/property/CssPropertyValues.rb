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

class CssPropertyValues
    include DomNodeInterface
    attr_accessor :logUtil, :propertyValueVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @propertyValueVector = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @propertyValueVector = BasicArrayListD.new()
    end
    

    def constructor1(node)
        initialize_fields
        indexPropertyValueHashMap = StdUtil.getInstance().createHashMap()
        @propertyValueVector = BasicArrayListD.new()
        cssPropertyNodeVector = DomSearchHelper.getAllNodes(CssPropertyValueData.getInstance().NAME, node.getChildNodes())
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().STYLE)
            @logUtil.putF("Number Of Properties: " + (cssPropertyNodeVector.size()).to_s, self, "CssProperties()")
        end
        size = cssPropertyNodeVector.size()
        (0...size).each do |index|
            cssPropertyValueNode = cssPropertyNodeVector.get(index)
            valueNode = DomSearchHelper.getNode(DomData::VALUE, cssPropertyValueNode.getChildNodes())
            propertyValue = DomNodeHelper.getTextNodeValue(valueNode)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().STYLE)
                @logUtil.putF("Property Value: " + propertyValue, self, "CssProperties()")
            end
            indexNode = DomSearchHelper.getNode(DomData::INDEX, cssPropertyValueNode.getChildNodes())
            indexValue = DomNodeHelper.getTextNodeValue(indexNode)
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
        commonSeps = CommonSeps.getInstance()
        cssPropertyValueData = CssPropertyValueData.getInstance()
        hashMap = StdUtil.getInstance().createHashMap()
        stringBuffer = StringMaker.new()
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
    

    # throws Exception
    def toXmlNode(document)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            hashMap = self.toHashMap()
            @logUtil.putF("CssPropertyValues HashMap: " + hashMap.to_s, self, "toXmlNode()")
        end
        return ModDomHelper.createNameValueIndexNodes(document, CssPropertyData.getInstance().VALUES, CssPropertyValueData.getInstance().NAME, @propertyValueVector)
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
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyData"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyValueData"

