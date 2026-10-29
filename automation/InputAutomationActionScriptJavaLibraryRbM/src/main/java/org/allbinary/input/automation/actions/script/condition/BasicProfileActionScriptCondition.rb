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

# require "java/awt/event/ActionEvent"
# require "javax/swing"
# require "javax/swing/tree/TreePath"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptItem"
require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface"

class BasicProfileActionScriptCondition < ProfileActionScriptItem
    include ProfileActionScriptConditionInterface
    attr_accessor :logUtil, :profileActionProcessorInterfaceVector, :profileActionConditionInterfaceVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @profileActionProcessorInterfaceVector = nil
        @profileActionConditionInterfaceVector = nil
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
        self.init()
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            actionItemNode = nodeList.item(index)
            if actionItemNode.getNodeType() == Node::ELEMENT_NODE
                if actionItemNode.getNodeName().compareTo(GenericProfileActionScriptConditionData::NAME) == 0
                    self.addCondition(ProfileActionScriptConditionFactory.getInstance(actionItemNode))
                elsif actionItemNode.getNodeName().compareTo(GenericProfileActionScriptInputData::NAME) == 0
                    self.addProcessor(ProfileActionScriptInputFactory.getInstance(actionItemNode))
                elsif actionItemNode.getNodeName().compareTo(GenericProfileActionScriptOutputData::NAME) == 0
                    self.addProcessor(ProfileActionScriptOutputFactory.getInstance(actionItemNode))
                end
            end
        end
    end
    

    # throws Exception
    def addProcessorNodes(node)
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            processorActionItemNode = nodeList.item(index)
            if processorActionItemNode.getNodeName().compareTo(GenericProfileActionScriptInputData::NAME) == 0
                self.addProcessor(ProfileActionScriptInputFactory.getInstance(processorActionItemNode))
            elsif processorActionItemNode.getNodeName().compareTo(GenericProfileActionScriptOutputData::NAME) == 0
                self.addProcessor(ProfileActionScriptOutputFactory.getInstance(processorActionItemNode))
            end
        end
    end
    

    def constructor1(label)
        method(:initialize).super_method.call(label)
        initialize_fields
        self.init()
    end
    

    def init()
        self.setProfileActionProcessorInterfaceVector(BasicArrayListD.new())
        self.setProfileActionConditionInterfaceVector(BasicArrayListD.new())
        self.getJPopupMenu().add(self.getConditionJPopupMenu())
        self.getJPopupMenu().add(self.getInputJPopupMenu())
        self.getJPopupMenu().add(self.getOutputJPopupMenu())
    end
    

    def getConditionJPopupMenu()
        jMenu = JMenu.new(NEW_CONDITION)
        jMenuItemColorAt = JMenuItem.new(NEW_COLOR_AT)
        jMenuItemAlways = JMenuItem.new(NEW_ALWAYS)
        jMenuItemTimeInterval = JMenuItem.new(NEW_TIME_INTERVAL)
        jMenuItemColorAt.addActionListener(self)
        jMenuItemAlways.addActionListener(self)
        jMenuItemTimeInterval.addActionListener(self)
        jMenu.add(jMenuItemColorAt)
        jMenu.add(jMenuItemAlways)
        jMenu.add(jMenuItemTimeInterval)
        return jMenu
    end
    

    def getInputJPopupMenu()
        jMenu = JMenu.new(NEW_INPUT)
        jMenuItemKey = JMenuItem.new(NEW_KEY_INPUT)
        jMenuItemMouse = JMenuItem.new(NEW_MOUSE_INPUT)
        jMenuItemJoystick = JMenuItem.new(NEW_JOYSTICK_INPUT)
        jMenuItemKey.addActionListener(self)
        jMenuItemMouse.addActionListener(self)
        jMenuItemJoystick.addActionListener(self)
        jMenu.add(jMenuItemKey)
        jMenu.add(jMenuItemMouse)
        jMenu.add(jMenuItemJoystick)
        return jMenu
    end
    

    def getOutputJPopupMenu()
        jMenu = JMenu.new(NEW_OUTPUT)
        jMenuItemImage = JMenuItem.new(NEW_IMAGE_OUTPUT)
        jMenuItemImage.addActionListener(self)
        jMenu.add(jMenuItemImage)
        return jMenu
    end
    

    def addProcessor(profileActionProcessorInterface)
        @logUtil.putF(@commonStrings.START, self, "addInput")
        self.getProfileActionProcessorInterfaceVector().add(profileActionProcessorInterface)
        self.add(profileActionProcessorInterface)
    end
    

    def removeProcessor(profileActionProcessorInterface)
        @logUtil.putF(@commonStrings.START, self, "removeInput")
        self.getProfileActionProcessorInterfaceVector().remove(profileActionProcessorInterface)
        self.remove(profileActionProcessorInterface)
    end
    

    def removeCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "removeCondition")
        self.getProfileActionConditionInterfaceVector().remove(profileActionScriptNodeInterface)
        self.remove(profileActionScriptNodeInterface)
    end
    

    def addCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "addCondition")
        self.getProfileActionConditionInterfaceVector().add(profileActionScriptNodeInterface)
        self.add(profileActionScriptNodeInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionScriptConditionData::NAME)
        profileActionConditionInterfaceVector = self.getProfileActionConditionInterfaceVector()
        size = profileActionConditionInterfaceVector.size()
        (0...size).each do |index|
            profileActionConditionInterface = profileActionConditionInterfaceVector.get(index)
            node.appendChild(profileActionConditionInterface.toXmlNode(document))
        end
        profileActionProcessorInterfaceVector = self.getProfileActionProcessorInterfaceVector()
        size2 = profileActionProcessorInterfaceVector.size()
        (0...size2).each do |index|
            profileActionProcessorInterface = profileActionProcessorInterfaceVector.get(index)
            node.appendChild(profileActionProcessorInterface.toXmlNode(document))
        end
        return node
    end
    

    def getProfileActionConditionInterfaceVector()
        return @profileActionConditionInterfaceVector
    end
    

    def setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector)
        @profileActionConditionInterfaceVector = profileActionConditionInterfaceVector
    end
    

    def actionPerformed(actionEvent)
        begin
            super(actionEvent)
            if actionEvent.getActionCommand().compareTo(DELETE) == 0
                if self.getParent().is_a?(ProfileActionScriptNodeInterface)
                    profileActionScriptNodeInterface = self.getParent()
                    profileActionScriptNodeInterface.removeCondition(self)
                    JTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree()
                end
            elsif actionEvent.getActionCommand().compareTo(NEW_COLOR_AT) == 0
                self.addCondition(ColorAtActionScriptCondition.new())
                self.updateTree()
            elsif actionEvent.getActionCommand().compareTo(NEW_ALWAYS) == 0
                self.addCondition(AlwaysActionScriptCondition.new())
                self.updateTree()
            elsif actionEvent.getActionCommand().compareTo(NEW_TIME_INTERVAL) == 0
                self.addCondition(TimeIntervalActionScriptCondition.new())
                self.updateTree()
            elsif actionEvent.getActionCommand().compareTo(NEW_KEY_INPUT) == 0
                self.addProcessor(KeyboardActionScriptInput.new())
                self.updateTree()
            elsif actionEvent.getActionCommand().compareTo(NEW_MOUSE_INPUT) == 0
                self.addProcessor(MouseActionScriptInput.new())
                self.updateTree()
            elsif actionEvent.getActionCommand().compareTo(NEW_IMAGE_OUTPUT) == 0
                self.addProcessor(ImageActionScriptOutput.new())
                self.updateTree()
            end
        rescue StandardError => e
            @logUtil.put("Error", self, "actionPerformed", e)
        end
    end
    

    def getProfileActionProcessorInterfaceVector()
        return @profileActionProcessorInterfaceVector
    end
    

    def setProfileActionProcessorInterfaceVector(profileActionProcessorInterfaceVector)
        @profileActionProcessorInterfaceVector = profileActionProcessorInterfaceVector
    end
    

    def updateTree()
        JTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree()
        treePath = TreePath.new(self)
        JTreeInterfaceFactory.getInstance().getJTreeInterface().getActionScriptJTree().expandPath(treePath)
    end
    

    # throws Exception
    def shouldProcess(frame)
        profileActionConditionInterfaceVector = self.getProfileActionConditionInterfaceVector()
        size = profileActionConditionInterfaceVector.size()
        (0...size).each do |index|
            profileActionScriptConditionInterface = profileActionConditionInterfaceVector.get(index)
            if !profileActionScriptConditionInterface.shouldProcess(frame)
                return false
            end
        end
        return true
    end
    

    # throws Exception
    def process(frame)
        @logUtil.putF(StringMaker.new().append("Start - Processing ").appendint(self.getProfileActionProcessorInterfaceVector().size()).append(" inputs").to_s, self, @commonStrings.PROCESS)
        profileActionProcessorInterfaceVector = self.getProfileActionProcessorInterfaceVector()
        size = profileActionProcessorInterfaceVector.size()
        (0...size).each do |index|
            profileActionScriptProcessorInterface = profileActionProcessorInterfaceVector.get(index)
            profileActionScriptProcessorInterface.process(frame)
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/actions/script/JTreeInterfaceFactory"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface"
require "org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface"
require "org/allbinary/input/automation/actions/script/condition/processors/input/GenericProfileActionScriptInputData"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputFactory"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/GenericProfileActionScriptOutputData"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutput"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/GenericProfileActionScriptConditionData"
require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionFactory"
require "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition"

