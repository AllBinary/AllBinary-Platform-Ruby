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

# require "java/util/Set"
require "org/allbinary/input/automation/actions/script/condition/processors/BasicProfileActionScriptProcessor"
require "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface"

class BasicProfileActionScriptInput < BasicProfileActionScriptProcessor
    include ProfileActionScriptInputInterface
    attr_accessor :logUtil, :inputRobotInterface, :time

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @inputRobotInterface = nil
        @time = 0
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(label, node)
        method(:initialize).super_method.call(label, node)
        initialize_fields
        @logUtil.putF((@commonStrings.START).to_s + label, self, @commonStrings.CONSTRUCTOR)
        actionNode = DomSearchHelper.getNode(GenericProfileActionScriptInputData::TYPE, node.getChildNodes())
        inputTypeString = DomNodeHelper.getTextNodeValue(actionNode)
        timeNode = DomSearchHelper.getNodeNoThrow(GenericProfileActionScriptInputData::DELAY, node.getChildNodes())
        if timeNode != nil
            delayString = DomNodeHelper.getTextNodeValue(timeNode)
            self.setTime((delayString).to_s.to_i)
        else
            self.setTime(0)
        end
        self.setInputRobotInterface(InputRobotFactory.getInstance().get(inputTypeString))
    end
    

    def constructor1(label)
        method(:initialize).super_method.call(label)
        initialize_fields
        @logUtil.putF((@commonStrings.START).to_s + label, self, @commonStrings.CONSTRUCTOR)
        inputRobotFactory = InputRobotFactory.getInstance()
        hashtable = inputRobotFactory.get()
        set = hashtable.keySet()
        iterator = set.iterator()
        self.setInputRobotInterface(inputRobotFactory.get(iterator.next_()))
        self.setTime(0)
    end
    

    def getTime()
        return @time
    end
    

    def setTime(time)
        @time = time
    end
    

    def BasicProfileActionScriptInput_toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(GenericProfileActionScriptInputData::TYPE, self.getInputRobotInterface().getName())
        hashMap.put(GenericProfileActionScriptInputData::DELAY, (self.getTime()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNodeWithValueNodes(document, GenericProfileActionScriptInputData::NAME, self.BasicProfileActionScriptInput_toHashMap())
        return node
    end
    

    def setInputRobotInterface(inputRobotInterface)
        @inputRobotInterface = inputRobotInterface
    end
    

    def getInputRobotInterface()
        return @inputRobotInterface
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" Input Type: ")
        if self.getInputRobotInterface() != nil
            stringBuffer.append(self.getInputRobotInterface().getName())
        else
            stringBuffer.append(StringUtil.getInstance().NULL_STRING)
        end
        stringBuffer.append(" Time: ")
        stringBuffer.appendlong(self.getTime())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "java/util/HashMap"
require "java/util/Iterator"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/input/automation/robot/InputRobotFactory"
require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/ABHashtable"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/actions/script/condition/processors/input/GenericProfileActionScriptInputData"

