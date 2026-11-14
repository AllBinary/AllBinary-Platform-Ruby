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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output

require "org/allbinary/input/automation/module/actions/script/condition/processors/output/BasicProfileActionScriptOutput"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface"

class ImageActionScriptOutput < BasicProfileActionScriptOutput
    include ImageActionScriptOutputInterface
    attr_accessor :logUtil, :saved, :display, :imageTypes, :actionScriptOutputJPanel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @saved = false
        @display = false
        @imageTypes = nil
        @actionScriptOutputJPanel = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(node)
        method(:initialize).super_method.call(NAME, node)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        actionNode = DomSearchHelper.getNode(ImageActionScriptOutputData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(ImageActionScriptOutputData::SAVE) == 0
                    booleanString = DomNodeHelper.getTextNodeValue(childNode)
                    self.setSaved(booleanString)
                elsif childNode.getNodeName().compareTo(ImageActionScriptOutputData::DISPLAY) == 0
                    booleanString = DomNodeHelper.getTextNodeValue(childNode)
                    self.setSaved(booleanString)
                elsif childNode.getNodeName().compareTo(ImageActionScriptOutputData::TYPES) == 0
                    self.setImageTypes(ImageTypes.new(childNode))
                else
                    raise StandardError.new("Action Script Output Unknown Node")
                end
            end
        else
            raise StandardError.new("Action Script Output Node Null")
        end
        self.setAllowsChildren(false)
        @actionScriptOutputJPanel = ImageActionScriptOutputJPanel.new(self)
    end
    

    def constructor0()
        method(:initialize).super_method.call(NAME)
        initialize_fields
        self.setImageTypes(ImageTypes.new())
        self.setAllowsChildren(false)
        @actionScriptOutputJPanel = ImageActionScriptOutputJPanel.new(self)
    end
    

    def getActionScriptOutputJPanel()
        return @actionScriptOutputJPanel
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(ImageActionScriptOutputData::DISPLAY, (self.isDisplay()).to_s)
        hashMap.put(ImageActionScriptOutputData::SAVE, (self.isSaved()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = super(document)
        newNode = ModDomHelper.createNodeWithValueNodes(document, ImageActionScriptOutputData::NAME, self.toHashMap())
        newNode.appendChild(self.getImageTypes().toXmlNode(document))
        node.appendChild(newNode)
        return node
    end
    

    # throws Exception
    def process(frame)
        ImageActionScriptOutputProcessor.process(self, frame)
    end
    

    def showDialog()
        @actionScriptOutputJPanel.getCapturedImageActionJDialog().setVisible(true)
    end
    

    def isSaved()
        return @saved
    end
    

    def setSaved(saved)
        @saved = saved
    end
    

    def isDisplay()
        return @display
    end
    

    def setDisplay(display)
        @display = display
    end
    

    def future_toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(" Is Save: ")
        stringBuffer.appendboolean(self.isSaved())
        stringBuffer.append(" Is Display: ")
        stringBuffer.appendboolean(self.isDisplay())
        stringBuffer.append(" ")
        stringBuffer.append(self.getImageTypes().to_s)
        return stringBuffer.to_s
    end
    

    def log()
        @logUtil.putF(self.future_toString(), self, "log")
    end
    

    def getImageTypes()
        return @imageTypes
    end
    

    def setImageTypes(imageTypes)
        @imageTypes = imageTypes
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Captures")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageActionScriptOutput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :ImageActionScriptOutputData, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData"
autoload :ImageActionScriptOutputJPanel, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputJPanel"
autoload :ImageActionScriptOutputProcessor, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputProcessor"
autoload :ImageTypes, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes"

begin
    ImageActionScriptOutput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

