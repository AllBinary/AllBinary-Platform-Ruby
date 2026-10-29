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
# package org.allbinary.input.automation.actions.script.condition.processors.input

# require "java/awt/event/KeyEvent"
require "org/allbinary/input/automation/actions/script/condition/processors/input/BasicProfileActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface"

class KeyboardActionScriptInput < BasicProfileActionScriptInput
    include KeyboardActionScriptInputInterface
    attr_accessor :logUtil, :keyArray, :keyboardActionScriptInputJPanel, :press, :release, :delayBetweenKeys

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @keyArray = [KeySingletonFactory.getInstance(KeyEvent::VK_0)]
        @keyboardActionScriptInputJPanel = nil
        @press = false
        @release = false
        @delayBetweenKeys = 0
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
        actionNode = DomSearchHelper.getNode(KeyboardActionScriptInputData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            vector = BasicArrayListD.new()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().startsWith(KeyboardActionScriptInputData::KEY)
                    keyString = DomNodeHelper.getTextNodeValue(childNode)
                    vector.add((keyString).to_s)
                elsif childNode.getNodeName().compareTo(KeyboardActionScriptInputData::DELAY_BETWEEN_KEYS) == 0
                    time = DomNodeHelper.getTextNodeValue(childNode)
                    self.setDelayBetweenKeys((time).to_s.to_i)
                elsif childNode.getNodeName().compareTo(KeyboardActionScriptInputData::PRESS) == 0
                    value = DomNodeHelper.getTextNodeValue(childNode)
                    self.setPress((value).to_s)
                elsif childNode.getNodeName().compareTo(KeyboardActionScriptInputData::RELEASE) == 0
                    value = DomNodeHelper.getTextNodeValue(childNode)
                    self.setRelease((value).to_s)
                else
                    raise StandardError.new("Action Script Input Unknown Node")
                end
            end
            self.setKeyArray(vector.toArrayType(Array.new(vector.size(), nil)))
        else
            raise StandardError.new("Action Script Input Node Null")
        end
        self.setAllowsChildren(false)
        if !self.isPress() && !self.isRelease()
            self.setNormal()
        end
        @keyboardActionScriptInputJPanel = KeyboardActionScriptInputJPanel.new(self)
    end
    

    def constructor0()
        method(:initialize).super_method.call(NAME)
        initialize_fields
        if !self.isPress() && !self.isRelease()
            self.setNormal()
        end
        self.setAllowsChildren(false)
        self.setTime(120)
        @keyboardActionScriptInputJPanel = KeyboardActionScriptInputJPanel.new(self)
    end
    

    def getDelayBetweenKeys()
        return @delayBetweenKeys
    end
    

    def setDelayBetweenKeys(delayBetweenKeys)
        @delayBetweenKeys = delayBetweenKeys
    end
    

    def isPress()
        return @press
    end
    

    def setPress(press)
        @press = press
    end
    

    def isRelease()
        return @release
    end
    

    def setRelease(release)
        @release = release
    end
    

    def isNormal()
        return self.isRelease() && self.isPress()
    end
    

    def setNormal()
        self.setPress(true)
        self.setRelease(true)
    end
    

    def getKeyArray()
        return @keyArray
    end
    

    def setKeyArray(keyArray)
        if keyArray != nil
            @logUtil.putF(CommonLabels.getInstance().START + keyArray.length, self, "setKeyArray")
        end
        @keyArray = keyArray
    end
    

    def showDialog()
        @keyboardActionScriptInputJPanel.getKeyActionJDialog().setVisible(true)
    end
    

    def getText()
        return self.getText(self.getKeyArray())
    end
    

    def setText(text)
        @logUtil.putF((CommonLabels.getInstance().START).to_s + text, self, "setText")
        integerArray = self.integerArrayValue(text)
        self.setKeyArray(integerArray)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.getText(integerArray)
        index = 0
        stringBuffer = StringMaker.new()
        while index < integerArray.length
            nextInteger = integerArray[index]
            if KeyUtil.isNormallyDisplayed(nextInteger)
                stringBuffer.append(KeyEvent.getKeyText(nextInteger))
            else
                stringBuffer.append("&#" + (nextInteger).to_s + ";")
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    

    def integerArrayValue(text)
        @logUtil.putF((CommonLabels.getInstance().START).to_s + text, self, "integerArrayValue")
        vector = BasicArrayListD.new()
        index = 0
        while index < text.length
            aChar = text[index]
            if aChar == "&"
                if text[index + 1] == "#"
                    endIndex = (text.index(";", index + 1) || -1)
                    if endIndex != -1
                        nextCharString = text[index + 2...endIndex]
                        @logUtil.putF((CommonLabels.getInstance().NEXT).to_s + " Char String: " + nextCharString, self, "integerArrayValue")
                        vector.add((nextCharString[index...nextCharString.length]).to_s)
                        index = index + nextCharString.length + 3
                        next
                    end
                end
            end
            vector.add(KeySingletonFactory.getHashtable().get((aChar).to_s))
            index += 1
        end
        integerArray = vector.toArrayType(Array.new(vector.size(), nil))
        return integerArray
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        (0...self.getKeyArray().length).each do |index|
            hashMap.put(KeyboardActionScriptInputData::KEY + index, (self.getKeyArray()[index]).to_s)
        end
        hashMap.put(KeyboardActionScriptInputData::DELAY_BETWEEN_KEYS, (self.getDelayBetweenKeys()).to_s)
        hashMap.put(KeyboardActionScriptInputData::PRESS, (self.isPress()).to_s)
        hashMap.put(KeyboardActionScriptInputData::RELEASE, (self.isRelease()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = super(document)
        node.appendChild(ModDomHelper.createNodeWithValueNodes(document, KeyboardActionScriptInputData::NAME, self.toHashMap()))
        return node
    end
    

    # throws Exception
    def process(frame)
        KeyboardInputAutomationProcessor.process(self)
    end
    

    def log()
        @logUtil.putF(self.to_s, self, "log")
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" Text: ")
        stringBuffer.append(self.getText())
        stringBuffer.append(" isPress: ")
        stringBuffer.appendboolean(self.isPress())
        stringBuffer.append(" isRelease: ")
        stringBuffer.appendboolean(self.isRelease())
        stringBuffer.append(" Between Key Delay: ")
        stringBuffer.appendint(self.getDelayBetweenKeys())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/input/KeySingletonFactory"
require "org/allbinary/input/KeyUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputData"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputJPanel"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardInputAutomationProcessor"

class KeyboardActionScriptInput
    NAME = "Keyboard"
end

