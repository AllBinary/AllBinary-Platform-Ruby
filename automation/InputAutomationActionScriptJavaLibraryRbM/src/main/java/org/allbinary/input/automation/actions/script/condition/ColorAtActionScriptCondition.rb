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
# package org.allbinary.input.automation.actions.script.condition

# require "java/awt/Color"
# require "java/awt/Point"
# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionInterface"

class ColorAtActionScriptCondition < BasicProfileActionScriptCondition
    include ColorAtActionScriptConditionInterface
    attr_accessor :logUtil, :colorAtActionScriptConditionJPanel, :point, :colorRangeInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @colorAtActionScriptConditionJPanel = nil
        @point = nil
        @colorRangeInterface = ColorRange.new()
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(node)
        method(:initialize).super_method.call(ColorAtActionScriptCondition::NAME, node)
        initialize_fields
        @point = Point.new(0, 0)
        actionNode = DomSearchHelper.getNode(ColorAtActionScriptConditionData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::LOCATION_X) == 0
                    locationX = DomNodeHelper.getTextNodeValue(childNode)
                    @point.x = (locationX).to_s
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::LOCATION_Y) == 0
                    locationY = DomNodeHelper.getTextNodeValue(childNode)
                    @point.y = (locationY).to_s
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MIN_RED) == 0
                    string = DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMinRed((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MAX_RED) == 0
                    string = DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMaxRed((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MIN_GREEN) == 0
                    string = DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMinGreen((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MAX_GREEN) == 0
                    string = DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMaxGreen((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MIN_BLUE) == 0
                    string = DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMinBlue((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MAX_BLUE) == 0
                    string = DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMaxBlue((string).to_s)
                end
            end
        else
            raise StandardError.new("Color At Action Script Condition Node Null")
        end
        self.init()
    end
    

    def constructor0()
        method(:initialize).super_method.call(ColorAtActionScriptCondition::NAME)
        initialize_fields
        @point = Point.new(0, 0)
        self.init()
    end
    

    def init()
        @colorAtActionScriptConditionJPanel = ColorAtActionScriptConditionJPanel.new(self)
    end
    

    def getPoint()
        return @point
    end
    

    def setPoint(point)
        @point = point
    end
    

    def showDialog()
        @colorAtActionScriptConditionJPanel.getColorAtActionJDialog().setVisible(true)
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(ColorAtActionScriptConditionData::LOCATION_X, (self.getPoint().x).to_s)
        hashMap.put(ColorAtActionScriptConditionData::LOCATION_Y, (self.getPoint().y).to_s)
        hashMap.put(ColorAtActionScriptConditionData::MIN_RED, (self.getColorRangeInterface().getMinRed()).to_s)
        hashMap.put(ColorAtActionScriptConditionData::MAX_RED, (self.getColorRangeInterface().getMaxRed()).to_s)
        hashMap.put(ColorAtActionScriptConditionData::MIN_GREEN, (self.getColorRangeInterface().getMinGreen()).to_s)
        hashMap.put(ColorAtActionScriptConditionData::MAX_GREEN, (self.getColorRangeInterface().getMaxGreen()).to_s)
        hashMap.put(ColorAtActionScriptConditionData::MIN_BLUE, (self.getColorRangeInterface().getMinBlue()).to_s)
        hashMap.put(ColorAtActionScriptConditionData::MAX_BLUE, (self.getColorRangeInterface().getMaxBlue()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = super(document)
        node.appendChild(ModDomHelper.createNodeWithValueNodes(document, ColorAtActionScriptConditionData::NAME, self.toHashMap()))
        return node
    end
    

    # throws Exception
    def shouldProcess(frame)
        capturedBufferedImageCacheable = (CapturedBufferedImagesCacheSingleton.getInstance()).get((frame).to_s)
        bufferedImage = capturedBufferedImageCacheable.getBufferedImage()
        automaticCacheInterface = ColorCacheFactory.getInstance()
        colorInteger = (bufferedImage.getRGB(self.getPoint().x, self.getPoint().y)).to_s
        colorCacheable = automaticCacheInterface.get(colorInteger)
        color = colorCacheable.getColor()
        if @colorRangeInterface.isInRange(color)
            return super(frame)
        end
        return false
    end
    

    def log()
        message = StringMaker.new().append("getPoint(): ").append(self.getPoint().to_s).append(CommonSeps.getInstance().NEW_LINE).append(self.getColorRangeInterface().to_s).to_s
        @logUtil.putF(message, self, "log")
    end
    

    def getColorRangeInterface()
        return @colorRangeInterface
    end
    

    def setColorRangeInterface(colorRangeInterface)
        @colorRangeInterface = colorRangeInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/graphics/color/ColorCacheFactory"
require "org/allbinary/graphics/color/ColorCacheable"
require "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/util/cache/AutomaticCacheInterface"
require "org/allbinary/media/image/analysis/ColorRange"
require "org/allbinary/media/image/analysis/ColorRangeInterface"
require "org/allbinary/media/image/cache/BufferedImageFrameCacheable"
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionData"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionJPanel"

class ColorAtActionScriptCondition
    NAME = "If Color At"
end

