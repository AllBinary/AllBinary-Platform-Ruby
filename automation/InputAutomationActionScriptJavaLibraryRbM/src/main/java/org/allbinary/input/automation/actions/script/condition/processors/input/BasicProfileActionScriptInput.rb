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
require "java/lang/JavaClass"
# require "java/util/Set"
require "org/allbinary/input/automation/actions/script/condition/processors/BasicProfileActionScriptProcessor"
require "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class BasicProfileActionScriptInput < ::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::BasicProfileActionScriptProcessor
    include ProfileActionScriptInputInterface
    attr_accessor :logUtil, :inputRobotInterface, :time

    def jfields_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @inputRobotInterface = nil unless instance_variable_defined?(:@inputRobotInterface)
        @time = 0 unless instance_variable_defined?(:@time)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInput_2(*args)
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInput_1(*args)
        else raise ArgumentError, "No constructor of BasicProfileActionScriptInput takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInput_2(label, node)
        BasicProfileActionScriptInput.superclass.instance_method(:initialize).bind(self).call(label, node)
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInput
        @logUtil.putF((@commonStrings.START).to_s + label, self, @commonStrings.CONSTRUCTOR)
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(GenericProfileActionScriptInputData::TYPE, node.getChildNodes())
        inputTypeString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(actionNode)
        timeNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(GenericProfileActionScriptInputData::DELAY, node.getChildNodes())
        if timeNode != nil
            delayString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(timeNode)
            self.setTime((delayString).to_s.to_i)
        else
            self.setTime(0)
        end
        self.setInputRobotInterface(::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().get(inputTypeString))
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInput_1(label)
        BasicProfileActionScriptInput.superclass.instance_method(:initialize).bind(self).call(label)
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInput
        @logUtil.putF((@commonStrings.START).to_s + label, self, @commonStrings.CONSTRUCTOR)
        inputRobotFactory = ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance()
        hashtable = inputRobotFactory.get()
        set = hashtable.keySet()
        iterator = set.iterator()
        self.setInputRobotInterface(inputRobotFactory.get(iterator.next_()))
        self.setTime(0)
    end
    

    def getTime()
        return @time
    end
    java_overload :getTime, 0
    

    def setTime(time)
        @time = time
    end
    java_overload :setTime, 1
    

    def BasicProfileActionScriptInput_toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(GenericProfileActionScriptInputData::TYPE, self.getInputRobotInterface().getName())
        hashMap.put(GenericProfileActionScriptInputData::DELAY, (self.getTime()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :BasicProfileActionScriptInput_toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, GenericProfileActionScriptInputData::NAME, self.BasicProfileActionScriptInput_toHashMap())
        return node
    end
    java_overload :toXmlNode, 1
    

    def setInputRobotInterface(inputRobotInterface)
        @inputRobotInterface = inputRobotInterface
    end
    java_overload :setInputRobotInterface, 1
    

    def getInputRobotInterface()
        return @inputRobotInterface
    end
    java_overload :getInputRobotInterface, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" Input Type: ")
        if self.getInputRobotInterface() != nil
            stringBuffer.append(self.getInputRobotInterface().getName())
        else
            stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().NULL_STRING)
        end
        stringBuffer.append(" Time: ")
        stringBuffer.appendlong(self.getTime())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Java; module Util; autoload :Iterator, "java/util/Iterator" unless const_defined?(:Iterator, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GenericProfileActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/GenericProfileActionScriptInputData" unless const_defined?(:GenericProfileActionScriptInputData, false)

end; end; end; end; end; end; end; end; end

