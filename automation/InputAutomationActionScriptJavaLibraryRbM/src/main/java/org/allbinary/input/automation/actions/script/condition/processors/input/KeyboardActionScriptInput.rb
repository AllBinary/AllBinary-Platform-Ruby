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

require "java/lang/JavaOverload"
# require "java/awt/event/KeyEvent"
require "org/allbinary/input/automation/actions/script/condition/processors/input/BasicProfileActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class KeyboardActionScriptInput < BasicProfileActionScriptInput
    include KeyboardActionScriptInputInterface
    attr_accessor :logUtil, :keyArray, :keyboardActionScriptInputJPanel, :press, :release, :delayBetweenKeys

    def jfields_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @keyArray = [::Org::Allbinary::Input::KeySingletonFactory.getInstance(KeyEvent::VK_0)]
        @keyboardActionScriptInputJPanel = nil unless instance_variable_defined?(:@keyboardActionScriptInputJPanel)
        @press = false unless instance_variable_defined?(:@press)
        @release = false unless instance_variable_defined?(:@release)
        @delayBetweenKeys = 0 unless instance_variable_defined?(:@delayBetweenKeys)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInput_1(*args)
        when 0 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInput_0(*args)
        else raise ArgumentError, "No constructor of KeyboardActionScriptInput takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInput_1(node)
        KeyboardActionScriptInput.superclass.instance_method(:initialize).bind(self).call(NAME, node)
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInput
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(KeyboardActionScriptInputData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            vector = ::Org::Allbinary::Util::BasicArrayListD.new()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().startsWith(KeyboardActionScriptInputData::KEY)
                    keyString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    vector.add((keyString).to_s)
                elsif childNode.getNodeName().compareTo(KeyboardActionScriptInputData::DELAY_BETWEEN_KEYS) == 0
                    time = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.setDelayBetweenKeys((time).to_s.to_i)
                elsif childNode.getNodeName().compareTo(KeyboardActionScriptInputData::PRESS) == 0
                    value = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.setPress((value).to_s)
                elsif childNode.getNodeName().compareTo(KeyboardActionScriptInputData::RELEASE) == 0
                    value = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
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
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInput_0()
        KeyboardActionScriptInput.superclass.instance_method(:initialize).bind(self).call(NAME)
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInput
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
    java_overload :getDelayBetweenKeys, 0
    

    def setDelayBetweenKeys(delayBetweenKeys)
        @delayBetweenKeys = delayBetweenKeys
    end
    java_overload :setDelayBetweenKeys, 1
    

    def isPress()
        return @press
    end
    java_overload :isPress, 0
    

    def setPress(press)
        @press = press
    end
    java_overload :setPress, 1
    

    def isRelease()
        return @release
    end
    java_overload :isRelease, 0
    

    def setRelease(release)
        @release = release
    end
    java_overload :setRelease, 1
    

    def isNormal()
        return self.isRelease() && self.isPress()
    end
    java_overload :isNormal, 0
    

    def setNormal()
        self.setPress(true)
        self.setRelease(true)
    end
    java_overload :setNormal, 0
    

    def getKeyArray()
        return @keyArray
    end
    java_overload :getKeyArray, 0
    

    def setKeyArray(keyArray)
        if keyArray != nil
            @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START + keyArray.length, self, "setKeyArray")
        end
        @keyArray = keyArray
    end
    java_overload :setKeyArray, 1
    

    def showDialog()
        @keyboardActionScriptInputJPanel.getKeyActionJDialog().setVisible(true)
    end
    java_overload :showDialog, 0
    

    def getText()
        return self.getText(self.getKeyArray())
    end
    java_overload :getText, 0
    

    def setText(text)
        @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START).to_s + text, self, "setText")
        integerArray = self.integerArrayValue(text)
        self.setKeyArray(integerArray)
    end
    java_overload :setText, 1
    

    def self.getText(integerArray)
        index = 0
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        while index < integerArray.length
            nextInteger = integerArray[index]
            if ::Org::Allbinary::Input::KeyUtil.isNormallyDisplayed(nextInteger)
                stringBuffer.append(KeyEvent.getKeyText(nextInteger))
            else
                stringBuffer.append("&#" + (nextInteger).to_s + ";")
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    

    def integerArrayValue(text)
        @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START).to_s + text, self, "integerArrayValue")
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        index = 0
        while index < text.length
            aChar = text[index]
            if aChar == "&"
                if text[index + 1] == "#"
                    endIndex = (text.index(";", index + 1) || -1)
                    if endIndex != -1
                        nextCharString = text[index + 2...endIndex]
                        @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).to_s + " Char String: " + nextCharString, self, "integerArrayValue")
                        vector.add((nextCharString[index...nextCharString.length]).to_s)
                        index = index + nextCharString.length + 3
                        next
                    end
                end
            end
            vector.add(::Org::Allbinary::Input::KeySingletonFactory.getHashtable().get((aChar).to_s))
            index += 1
        end
        integerArray = vector.toArrayType(Array.new(vector.size(), nil))
        return integerArray
    end
    java_overload :integerArrayValue, 1
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        (0...self.getKeyArray().length).each do |index|
            hashMap.put(KeyboardActionScriptInputData::KEY + index, (self.getKeyArray()[index]).to_s)
        end
        hashMap.put(KeyboardActionScriptInputData::DELAY_BETWEEN_KEYS, (self.getDelayBetweenKeys()).to_s)
        hashMap.put(KeyboardActionScriptInputData::PRESS, (self.isPress()).to_s)
        hashMap.put(KeyboardActionScriptInputData::RELEASE, (self.isRelease()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = KeyboardActionScriptInput.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document)
        node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, KeyboardActionScriptInputData::NAME, self.toHashMap()))
        return node
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def process(frame)
        KeyboardInputAutomationProcessor.process(self)
    end
    java_overload :process, 1
    

    def log()
        @logUtil.putF(self.to_s, self, "log")
    end
    java_overload :log, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Keyboard")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "KeyboardActionScriptInput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; autoload :KeySingletonFactory, "org/allbinary/input/KeySingletonFactory" unless const_defined?(:KeySingletonFactory, false); end; end; end
module ::Org; module Allbinary; module Input; autoload :KeyUtil, "org/allbinary/input/KeyUtil" unless const_defined?(:KeyUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :KeyboardActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputData" unless const_defined?(:KeyboardActionScriptInputData, false)
autoload :KeyboardActionScriptInputJPanel, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputJPanel" unless const_defined?(:KeyboardActionScriptInputJPanel, false)
autoload :KeyboardInputAutomationProcessor, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardInputAutomationProcessor" unless const_defined?(:KeyboardInputAutomationProcessor, false)

begin
    KeyboardActionScriptInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

