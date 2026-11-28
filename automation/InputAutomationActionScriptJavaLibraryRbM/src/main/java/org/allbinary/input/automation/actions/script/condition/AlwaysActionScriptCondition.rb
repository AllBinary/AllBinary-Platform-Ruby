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
require "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionInterface"
require "org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class AlwaysActionScriptCondition < BasicProfileActionScriptCondition
    include AlwaysActionScriptConditionInterface
    attr_accessor :logUtil, :alwaysActionScriptConditionJPanel, :isOn

    def jfields_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptCondition
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @alwaysActionScriptConditionJPanel = nil unless instance_variable_defined?(:@alwaysActionScriptConditionJPanel)
        @isOn = false unless instance_variable_defined?(:@isOn)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptCondition_1(*args)
        when 0 then jnew_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptCondition_0(*args)
        else raise ArgumentError, "No constructor of AlwaysActionScriptCondition takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptCondition_1(node)
        AlwaysActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(NAME, node)
        jfields_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptCondition
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(AlwaysActionScriptConditionData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(AlwaysActionScriptConditionData::IS_ON) == 0
                    booleanString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
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
    

    def jnew_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptCondition_0()
        AlwaysActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(NAME)
        jfields_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptCondition
        self.init()
    end
    

    def init()
        @alwaysActionScriptConditionJPanel = AlwaysActionScriptConditionJPanel.new(self)
    end
    java_overload :init, 0
    

    def isIsOn()
        return @isOn
    end
    java_overload :isIsOn, 0
    

    def setIsOn(isOn)
        @isOn = isOn
    end
    java_overload :setIsOn, 1
    

    def showDialog()
        @alwaysActionScriptConditionJPanel.getAlwaysActionJDialog().setVisible(true)
    end
    java_overload :showDialog, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(AlwaysActionScriptConditionData::IS_ON, (self.isIsOn()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = AlwaysActionScriptCondition.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document)
        node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, AlwaysActionScriptConditionData::NAME, self.toHashMap()))
        return node
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def shouldProcess(frame)
        if self.isIsOn()
            return AlwaysActionScriptCondition.superclass.java_super_method(:shouldProcess, 1).bind(self).call(frame)
        end
        return false
    end
    java_overload :shouldProcess, 1
    

    def log()
        @logUtil.putF("Is On: " + (self.isIsOn()).to_s, self, "log")
    end
    java_overload :log, 0

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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :AlwaysActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionData" unless const_defined?(:AlwaysActionScriptConditionData, false)
autoload :AlwaysActionScriptConditionJPanel, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionJPanel" unless const_defined?(:AlwaysActionScriptConditionJPanel, false)

begin
    AlwaysActionScriptCondition.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

