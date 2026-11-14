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

require "org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionInterface"

class TimeIntervalActionScriptCondition < BasicProfileActionScriptCondition
    include TimeIntervalActionScriptConditionInterface
    attr_accessor :logUtil, :timeIntervalActionScriptConditionJPanel, :timeHelper

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @timeIntervalActionScriptConditionJPanel = nil
        @timeHelper = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(node)
        method(:initialize).super_method.call(TimeIntervalActionScriptCondition::NAME, node)
        initialize_fields
        actionNode = DomSearchHelper.getNode(TimeIntervalActionScriptConditionData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(TimeIntervalActionScriptConditionData::TIME) == 0
                    interval = DomNodeHelper.getTextNodeValue(childNode)
                    self.setTimeDelayHelper(TimeDelayHelper.new((interval).to_s))
                else
                    raise StandardError.new("Time Interval Action Script Condition Unknown Node")
                end
            end
        else
            raise StandardError.new("Time Interval Action Script Condition Node Null")
        end
        self.init()
    end
    

    def constructor0()
        method(:initialize).super_method.call(TimeIntervalActionScriptCondition::NAME)
        initialize_fields
        self.setTimeDelayHelper(TimeDelayHelper.new(0))
        self.init()
    end
    

    def init()
        @timeIntervalActionScriptConditionJPanel = TimeIntervalActionScriptConditionJPanel.new(self)
    end
    

    def showDialog()
        @timeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog().setVisible(true)
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(TimeIntervalActionScriptConditionData::TIME, (@timeHelper.delay).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = super(document)
        node.appendChild(ModDomHelper.createNodeWithValueNodes(document, TimeIntervalActionScriptConditionData::NAME, self.toHashMap()))
        return node
    end
    

    def log()
        @logUtil.putF("Time Interval: " + (@timeHelper.delay).to_s, self, "log")
    end
    

    def getTimeDelayHelper()
        return @timeHelper
    end
    

    def setTimeDelayHelper(timeHelper)
        @timeHelper = timeHelper
    end
    

    # throws Exception
    def shouldProcess(frame)
        timeHelper = self.getTimeDelayHelper()
        if timeHelper.isTimeTNT()
            timeHelper.setStartTimeTNT()
            return super(frame)
        end
        return false
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Time Interval")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TimeIntervalActionScriptCondition"
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
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :TimeIntervalActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionData"
autoload :TimeIntervalActionScriptConditionJPanel, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionJPanel"

begin
    TimeIntervalActionScriptCondition.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

