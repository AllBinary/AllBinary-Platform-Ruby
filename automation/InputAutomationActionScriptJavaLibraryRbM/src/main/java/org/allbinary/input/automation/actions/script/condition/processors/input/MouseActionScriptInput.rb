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

# require "java/awt"
# require "java/awt/event/InputEvent"
require "org/allbinary/input/automation/actions/script/condition/processors/input/BasicProfileActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface"

class MouseActionScriptInput < BasicProfileActionScriptInput
    include MouseActionScriptInputInterface
    attr_accessor :logUtil, :point, :buttons, :mouseActionScriptInputJPanel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @point = nil
        @buttons = 0
        @mouseActionScriptInputJPanel = nil
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
        @point = Point.new()
        actionNode = DomSearchHelper.getNode(MouseActionScriptInputData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(MouseActionScriptInputData::BUTTONS) == 0
                    buttons = DomNodeHelper.getTextNodeValue(childNode)
                    self.setButtonClicks((buttons).to_s.to_i)
                elsif childNode.getNodeName().compareTo(MouseActionScriptInputData::MOVE) == 0
                    mouseXNode = DomSearchHelper.getNode(MouseActionScriptInputData::MOVE_X, childNode.getChildNodes())
                    mouseXString = DomNodeHelper.getTextNodeValue(mouseXNode)
                    mouseXInteger = (mouseXString).to_s
                    mouseYNode = DomSearchHelper.getNode(MouseActionScriptInputData::MOVE_Y, childNode.getChildNodes())
                    mouseYString = DomNodeHelper.getTextNodeValue(mouseYNode)
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
    

    def constructor0()
        method(:initialize).super_method.call(NAME)
        initialize_fields
        @point = Point.new()
        self.setAllowsChildren(false)
        @mouseActionScriptInputJPanel = MouseActionScriptInputJPanel.new(self)
    end
    

    def setPoint(point)
        @point = point
    end
    

    def getPoint()
        return @point
    end
    

    def getButtonClicks()
        return @buttons
    end
    

    def setButtonClicks(buttons)
        @buttons = buttons
    end
    

    def showDialog()
        @mouseActionScriptInputJPanel.getMouseActionJDialog().setVisible(true)
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(MouseActionScriptInputData::BUTTONS, (self.getButtonClicks()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = super(document)
        mouseNode = ModDomHelper.createNodeWithValueNodes(document, MouseActionScriptInputData::NAME, self.toHashMap())
        node.appendChild(mouseNode)
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(MouseActionScriptInputData::MOVE_X, (self.getPoint().x).to_s)
        hashMap.put(MouseActionScriptInputData::MOVE_Y, (self.getPoint().y).to_s)
        mouseNode.appendChild(ModDomHelper.createNodeWithValueNodes(document, MouseActionScriptInputData::MOVE, hashMap))
        return node
    end
    

    # throws Exception
    def process(frame)
        MouseInputAutomationProcessor.process(self)
    end
    

    def log()
        buttonStringBuffer = StringMaker.new()
        buttonStringBuffer.append("1: ")
        booleanFactory = BooleanFactory.getInstance()
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

autoload :HashMap, "java/util/HashMap"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :MouseActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputData"
autoload :MouseActionScriptInputJPanel, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputJPanel"
autoload :MouseInputAutomationProcessor, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseInputAutomationProcessor"

begin
    MouseActionScriptInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

