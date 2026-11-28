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
require "org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class TimeIntervalActionScriptCondition < BasicProfileActionScriptCondition
    include TimeIntervalActionScriptConditionInterface
    attr_accessor :logUtil, :timeIntervalActionScriptConditionJPanel, :timeHelper

    def jfields_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptCondition
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @timeIntervalActionScriptConditionJPanel = nil unless instance_variable_defined?(:@timeIntervalActionScriptConditionJPanel)
        @timeHelper = nil unless instance_variable_defined?(:@timeHelper)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptCondition_1(*args)
        when 0 then jnew_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptCondition_0(*args)
        else raise ArgumentError, "No constructor of TimeIntervalActionScriptCondition takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptCondition_1(node)
        TimeIntervalActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(NAME, node)
        jfields_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptCondition
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(TimeIntervalActionScriptConditionData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(TimeIntervalActionScriptConditionData::TIME) == 0
                    interval = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.setTimeDelayHelper(::Org::Allbinary::TimePackage::TimeDelayHelper.new((interval).to_s))
                else
                    raise StandardError.new("Time Interval Action Script Condition Unknown Node")
                end
            end
        else
            raise StandardError.new("Time Interval Action Script Condition Node Null")
        end
        self.init()
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptCondition_0()
        TimeIntervalActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(NAME)
        jfields_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptCondition
        self.setTimeDelayHelper(::Org::Allbinary::TimePackage::TimeDelayHelper.new(0))
        self.init()
    end
    

    def init()
        @timeIntervalActionScriptConditionJPanel = TimeIntervalActionScriptConditionJPanel.new(self)
    end
    java_overload :init, 0
    

    def showDialog()
        @timeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog().setVisible(true)
    end
    java_overload :showDialog, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(TimeIntervalActionScriptConditionData::TIME, (@timeHelper.delay).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = TimeIntervalActionScriptCondition.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document)
        node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, TimeIntervalActionScriptConditionData::NAME, self.toHashMap()))
        return node
    end
    java_overload :toXmlNode, 1
    

    def log()
        @logUtil.putF("Time Interval: " + (@timeHelper.delay).to_s, self, "log")
    end
    java_overload :log, 0
    

    def getTimeDelayHelper()
        return @timeHelper
    end
    java_overload :getTimeDelayHelper, 0
    

    def setTimeDelayHelper(timeHelper)
        @timeHelper = timeHelper
    end
    java_overload :setTimeDelayHelper, 1
    

    # throws Exception
    def shouldProcess(frame)
        timeHelper = self.getTimeDelayHelper()
        if timeHelper.isTimeTNT()
            timeHelper.setStartTimeTNT()
            return TimeIntervalActionScriptCondition.superclass.java_super_method(:shouldProcess, 1).bind(self).call(frame)
        end
        return false
    end
    java_overload :shouldProcess, 1

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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :TimeIntervalActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionData" unless const_defined?(:TimeIntervalActionScriptConditionData, false)
autoload :TimeIntervalActionScriptConditionJPanel, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionJPanel" unless const_defined?(:TimeIntervalActionScriptConditionJPanel, false)

begin
    TimeIntervalActionScriptCondition.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

