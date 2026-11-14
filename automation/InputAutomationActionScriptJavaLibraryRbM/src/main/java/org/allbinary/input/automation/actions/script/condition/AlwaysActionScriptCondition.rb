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

require "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionInterface"
require "org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition"

class AlwaysActionScriptCondition < BasicProfileActionScriptCondition
    include AlwaysActionScriptConditionInterface
    attr_accessor :logUtil, :alwaysActionScriptConditionJPanel, :isOn

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @alwaysActionScriptConditionJPanel = nil
        @isOn = false
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(node)
        method(:initialize).super_method.call(AlwaysActionScriptCondition::NAME, node)
        initialize_fields
        actionNode = DomSearchHelper.getNode(AlwaysActionScriptConditionData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(AlwaysActionScriptConditionData::IS_ON) == 0
                    booleanString = DomNodeHelper.getTextNodeValue(childNode)
                    self.setIsOn(booleanString)
                else
                    raise StandardError.new("Action Script Condition Unknown Node")
                end
            end
        else
            raise StandardError.new("Action Script Condition Node Null")
        end
        self.init()
    end
    

    def constructor0()
        method(:initialize).super_method.call(AlwaysActionScriptCondition::NAME)
        initialize_fields
        self.init()
    end
    

    def init()
        @alwaysActionScriptConditionJPanel = AlwaysActionScriptConditionJPanel.new(self)
    end
    

    def isIsOn()
        return @isOn
    end
    

    def setIsOn(isOn)
        @isOn = isOn
    end
    

    def showDialog()
        @alwaysActionScriptConditionJPanel.getAlwaysActionJDialog().setVisible(true)
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(AlwaysActionScriptConditionData::IS_ON, (self.isIsOn()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = super(document)
        node.appendChild(ModDomHelper.createNodeWithValueNodes(document, AlwaysActionScriptConditionData::NAME, self.toHashMap()))
        return node
    end
    

    # throws Exception
    def shouldProcess(frame)
        if self.isIsOn()
            return super(frame)
        end
        return false
    end
    

    def log()
        @logUtil.putF("Is On: " + (self.isIsOn()).to_s, self, "log")
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Always On/Off")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AlwaysActionScriptCondition"
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
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :AlwaysActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionData"
autoload :AlwaysActionScriptConditionJPanel, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionJPanel"

begin
    AlwaysActionScriptCondition.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

