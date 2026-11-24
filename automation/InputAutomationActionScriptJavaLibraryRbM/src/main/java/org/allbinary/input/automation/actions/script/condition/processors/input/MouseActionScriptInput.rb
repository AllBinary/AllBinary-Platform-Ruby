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
# require "java/awt/Point"
# require "java/awt/event/InputEvent"
require "org/allbinary/input/automation/actions/script/condition/processors/input/BasicProfileActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class MouseActionScriptInput < BasicProfileActionScriptInput
    include MouseActionScriptInputInterface
    attr_accessor :logUtil, :point, :buttons, :mouseActionScriptInputJPanel

    def jfields_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @point = nil unless instance_variable_defined?(:@point)
        @buttons = 0 unless instance_variable_defined?(:@buttons)
        @mouseActionScriptInputJPanel = nil unless instance_variable_defined?(:@mouseActionScriptInputJPanel)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInput_1(*args)
        when 0 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInput_0(*args)
        else raise ArgumentError, "No constructor of MouseActionScriptInput takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInput_1(node)
        MouseActionScriptInput.superclass.instance_method(:initialize).bind(self).call(NAME, node)
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInput
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @point = Point.new()
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(MouseActionScriptInputData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(MouseActionScriptInputData::BUTTONS) == 0
                    buttons = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.setButtonClicks((buttons).to_s.to_i)
                elsif childNode.getNodeName().compareTo(MouseActionScriptInputData::MOVE) == 0
                    mouseXNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(MouseActionScriptInputData::MOVE_X, childNode.getChildNodes())
                    mouseXString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(mouseXNode)
                    mouseXInteger = (mouseXString).to_s
                    mouseYNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(MouseActionScriptInputData::MOVE_Y, childNode.getChildNodes())
                    mouseYString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(mouseYNode)
                    mouseYInteger = (mouseYString).to_s
                    newPoint = Point.new(mouseXInteger.to_i, mouseYInteger.to_i)
                    self.setPoint(newPoint)
                else
                    raise StandardError.new("Action Script Input Unknown Node")
                end
            end
        else
            raise StandardError.new("Action Script Input Node Null")
        end
        self.setAllowsChildren(false)
        @mouseActionScriptInputJPanel = MouseActionScriptInputJPanel.new(self)
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInput_0()
        MouseActionScriptInput.superclass.instance_method(:initialize).bind(self).call(NAME)
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInput
        @point = Point.new()
        self.setAllowsChildren(false)
        @mouseActionScriptInputJPanel = MouseActionScriptInputJPanel.new(self)
    end
    

    def setPoint(point)
        @point = point
    end
    java_overload :setPoint, 1
    

    def getPoint()
        return @point
    end
    java_overload :getPoint, 0
    

    def getButtonClicks()
        return @buttons
    end
    java_overload :getButtonClicks, 0
    

    def setButtonClicks(buttons)
        @buttons = buttons
    end
    java_overload :setButtonClicks, 1
    

    def showDialog()
        @mouseActionScriptInputJPanel.getMouseActionJDialog().setVisible(true)
    end
    java_overload :showDialog, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(MouseActionScriptInputData::BUTTONS, (self.getButtonClicks()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = MouseActionScriptInput.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document)
        mouseNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, MouseActionScriptInputData::NAME, self.toHashMap())
        node.appendChild(mouseNode)
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(MouseActionScriptInputData::MOVE_X, (self.getPoint().x).to_s)
        hashMap.put(MouseActionScriptInputData::MOVE_Y, (self.getPoint().y).to_s)
        mouseNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, MouseActionScriptInputData::MOVE, hashMap))
        return node
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def process(frame)
        MouseInputAutomationProcessor.process(self)
    end
    java_overload :process, 1
    

    def log()
        buttonStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        buttonStringBuffer.append("1: ")
        booleanFactory = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance()
        if (self.getButtonClicks() & InputEvent::BUTTON1_MASK) != 0
            buttonStringBuffer.append(booleanFactory.TRUE_STRING)
        else
            buttonStringBuffer.append(booleanFactory.FALSE_STRING)
        end
        buttonStringBuffer.append(" 2: ")
        if (self.getButtonClicks() & InputEvent::BUTTON2_MASK) != 0
            buttonStringBuffer.append(booleanFactory.TRUE_STRING)
        else
            buttonStringBuffer.append(booleanFactory.FALSE_STRING)
        end
        buttonStringBuffer.append(" 3: ")
        if (self.getButtonClicks() & InputEvent::BUTTON3_MASK) != 0
            buttonStringBuffer.append(booleanFactory.TRUE_STRING)
        else
            buttonStringBuffer.append(booleanFactory.FALSE_STRING)
        end
        @logUtil.putF("Input Type: " + self.getInputRobotInterface().getName() + " Point: " + (self.getPoint()).to_s + " Buttons Clicked: " + buttonStringBuffer.to_s, self, "log")
    end
    java_overload :log, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Mouse")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MouseActionScriptInput"
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
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :MouseActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputData" unless const_defined?(:MouseActionScriptInputData, false)
autoload :MouseActionScriptInputJPanel, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputJPanel" unless const_defined?(:MouseActionScriptInputJPanel, false)
autoload :MouseInputAutomationProcessor, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseInputAutomationProcessor" unless const_defined?(:MouseInputAutomationProcessor, false)

begin
    MouseActionScriptInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

