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

require "java/lang/JavaOverload"
# require "java/awt/Color"
# require "java/awt/Point"
# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class ColorAtActionScriptCondition < BasicProfileActionScriptCondition
    include ColorAtActionScriptConditionInterface
    attr_accessor :logUtil, :colorAtActionScriptConditionJPanel, :point, :colorRangeInterface

    def jfields_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptCondition
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @colorAtActionScriptConditionJPanel = nil unless instance_variable_defined?(:@colorAtActionScriptConditionJPanel)
        @point = nil unless instance_variable_defined?(:@point)
        @colorRangeInterface = ::Org::Allbinary::Media::Image::Analysis::ColorRange.new()
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptCondition_1(*args)
        when 0 then jnew_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptCondition_0(*args)
        else raise ArgumentError, "No constructor of ColorAtActionScriptCondition takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptCondition_1(node)
        ColorAtActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(NAME, node)
        jfields_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptCondition
        @point = Point.new(0, 0)
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(ColorAtActionScriptConditionData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::LOCATION_X) == 0
                    locationX = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    @point.x = (locationX).to_s
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::LOCATION_Y) == 0
                    locationY = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    @point.y = (locationY).to_s
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MIN_RED) == 0
                    string = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMinRed((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MAX_RED) == 0
                    string = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMaxRed((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MIN_GREEN) == 0
                    string = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMinGreen((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MAX_GREEN) == 0
                    string = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMaxGreen((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MIN_BLUE) == 0
                    string = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMinBlue((string).to_s)
                elsif childNode.getNodeName().compareTo(ColorAtActionScriptConditionData::MAX_BLUE) == 0
                    string = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.getColorRangeInterface().setMaxBlue((string).to_s)
                end
            end
        else
            raise StandardError.new("Color At Action Script Condition Node Null")
        end
        self.init()
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptCondition_0()
        ColorAtActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(NAME)
        jfields_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptCondition
        @point = Point.new(0, 0)
        self.init()
    end
    

    def init()
        @colorAtActionScriptConditionJPanel = ColorAtActionScriptConditionJPanel.new(self)
    end
    java_overload :init, 0
    

    def getPoint()
        return @point
    end
    java_overload :getPoint, 0
    

    def setPoint(point)
        @point = point
    end
    java_overload :setPoint, 1
    

    def showDialog()
        @colorAtActionScriptConditionJPanel.getColorAtActionJDialog().setVisible(true)
    end
    java_overload :showDialog, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = ColorAtActionScriptCondition.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document)
        node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, ColorAtActionScriptConditionData::NAME, self.toHashMap()))
        return node
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def shouldProcess(frame)
        capturedBufferedImageCacheable = (::Org::Allbinary::Input::Media::Image::Capture::CapturedBufferedImagesCacheSingleton.getInstance()).get((frame).to_s)
        bufferedImage = capturedBufferedImageCacheable.getBufferedImage()
        automaticCacheInterface = ::Org::Allbinary::Graphics::Color::ColorCacheFactory.getInstance()
        colorInteger = (bufferedImage.getRGB(self.getPoint().x, self.getPoint().y)).to_s
        colorCacheable = automaticCacheInterface.get(colorInteger)
        color = colorCacheable.getColor()
        if @colorRangeInterface.isInRange(color)
            return ColorAtActionScriptCondition.superclass.java_super_method(:shouldProcess, 1).bind(self).call(frame)
        end
        return false
    end
    java_overload :shouldProcess, 1
    

    def log()
        message = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("getPoint(): ").append(self.getPoint().to_s).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE).append(self.getColorRangeInterface().to_s).to_s
        @logUtil.putF(message, self, "log")
    end
    java_overload :log, 0
    

    def getColorRangeInterface()
        return @colorRangeInterface
    end
    java_overload :getColorRangeInterface, 0
    

    def setColorRangeInterface(colorRangeInterface)
        @colorRangeInterface = colorRangeInterface
    end
    java_overload :setColorRangeInterface, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "If Color At")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ColorAtActionScriptCondition"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorCacheFactory, "org/allbinary/graphics/color/ColorCacheFactory" unless const_defined?(:ColorCacheFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorCacheable, "org/allbinary/graphics/color/ColorCacheable" unless const_defined?(:ColorCacheable, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton" unless const_defined?(:CapturedBufferedImagesCacheSingleton, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface" unless const_defined?(:AutomaticCacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ColorRange, "org/allbinary/media/image/analysis/ColorRange" unless const_defined?(:ColorRange, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ColorRangeInterface, "org/allbinary/media/image/analysis/ColorRangeInterface" unless const_defined?(:ColorRangeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageFrameCacheable, "org/allbinary/media/image/cache/BufferedImageFrameCacheable" unless const_defined?(:BufferedImageFrameCacheable, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :ColorAtActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionData" unless const_defined?(:ColorAtActionScriptConditionData, false)
autoload :ColorAtActionScriptConditionJPanel, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionJPanel" unless const_defined?(:ColorAtActionScriptConditionJPanel, false)

begin
    ColorAtActionScriptCondition.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

