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
# require "java/awt/event/ActionEvent"
# require "javax/swing/JMenu"
# require "javax/swing/JMenuItem"
# require "javax/swing/tree/TreePath"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptItem"
require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class BasicProfileActionScriptCondition < ::Org::Allbinary::Input::Automation::Actions::Script::ProfileActionScriptItem
    include ProfileActionScriptConditionInterface
    attr_accessor :logUtil, :profileActionProcessorInterfaceVector, :profileActionConditionInterfaceVector

    def jfields_org_allbinary_input_automation_actions_script_condition_BasicProfileActionScriptCondition
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @profileActionProcessorInterfaceVector = nil unless instance_variable_defined?(:@profileActionProcessorInterfaceVector)
        @profileActionConditionInterfaceVector = nil unless instance_variable_defined?(:@profileActionConditionInterfaceVector)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_actions_script_condition_BasicProfileActionScriptCondition_2(*args)
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_BasicProfileActionScriptCondition_1(*args)
        else raise ArgumentError, "No constructor of BasicProfileActionScriptCondition takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_BasicProfileActionScriptCondition_2(label, node)
        BasicProfileActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(label, node)
        jfields_org_allbinary_input_automation_actions_script_condition_BasicProfileActionScriptCondition
        self.init()
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            actionItemNode = nodeList.item(index)
            if actionItemNode.getNodeType() == ::Org::W3c::Dom::Node::ELEMENT_NODE
                if actionItemNode.getNodeName().compareTo(GenericProfileActionScriptConditionData::NAME) == 0
                    self.addCondition(ProfileActionScriptConditionFactory.getInstance(actionItemNode))
                elsif actionItemNode.getNodeName().compareTo(::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::Input::GenericProfileActionScriptInputData::NAME) == 0
                    self.addProcessor(::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::Input::ProfileActionScriptInputFactory.getInstance(actionItemNode))
                elsif actionItemNode.getNodeName().compareTo(::Org::Allbinary::Input::Automation::ModulePackage::Actions::Script::Condition::Processors::Output::GenericProfileActionScriptOutputData::NAME) == 0
                    self.addProcessor(::Org::Allbinary::Input::Automation::ModulePackage::Actions::Script::Condition::Processors::Output::ProfileActionScriptOutputFactory.getInstance(actionItemNode))
                end
            end
        end
    end
    

    # throws Exception
    def addProcessorNodes(node)
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            processorActionItemNode = nodeList.item(index)
            if processorActionItemNode.getNodeName().compareTo(::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::Input::GenericProfileActionScriptInputData::NAME) == 0
                self.addProcessor(::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::Input::ProfileActionScriptInputFactory.getInstance(processorActionItemNode))
            elsif processorActionItemNode.getNodeName().compareTo(::Org::Allbinary::Input::Automation::ModulePackage::Actions::Script::Condition::Processors::Output::GenericProfileActionScriptOutputData::NAME) == 0
                self.addProcessor(::Org::Allbinary::Input::Automation::ModulePackage::Actions::Script::Condition::Processors::Output::ProfileActionScriptOutputFactory.getInstance(processorActionItemNode))
            end
        end
    end
    java_overload :addProcessorNodes, 1
    

    def jnew_org_allbinary_input_automation_actions_script_condition_BasicProfileActionScriptCondition_1(label)
        BasicProfileActionScriptCondition.superclass.instance_method(:initialize).bind(self).call(label)
        jfields_org_allbinary_input_automation_actions_script_condition_BasicProfileActionScriptCondition
        self.init()
    end
    

    def init()
        self.setProfileActionProcessorInterfaceVector(::Org::Allbinary::Util::BasicArrayListD.new())
        self.setProfileActionConditionInterfaceVector(::Org::Allbinary::Util::BasicArrayListD.new())
        self.getJPopupMenu().add(self.getConditionJPopupMenu())
        self.getJPopupMenu().add(self.getInputJPopupMenu())
        self.getJPopupMenu().add(self.getOutputJPopupMenu())
    end
    java_overload :init, 0
    

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
    java_overload :getConditionJPopupMenu, 0
    

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
    java_overload :getInputJPopupMenu, 0
    

    def getOutputJPopupMenu()
        jMenu = JMenu.new(NEW_OUTPUT)
        jMenuItemImage = JMenuItem.new(NEW_IMAGE_OUTPUT)
        jMenuItemImage.addActionListener(self)
        jMenu.add(jMenuItemImage)
        return jMenu
    end
    java_overload :getOutputJPopupMenu, 0
    

    def addProcessor(profileActionProcessorInterface)
        @logUtil.putF(@commonStrings.START, self, "addInput")
        self.getProfileActionProcessorInterfaceVector().add(profileActionProcessorInterface)
        self.add(profileActionProcessorInterface)
    end
    java_overload :addProcessor, 1
    

    def removeProcessor(profileActionProcessorInterface)
        @logUtil.putF(@commonStrings.START, self, "removeInput")
        self.getProfileActionProcessorInterfaceVector().remove(profileActionProcessorInterface)
        self.remove(profileActionProcessorInterface)
    end
    java_overload :removeProcessor, 1
    

    def removeCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "removeCondition")
        self.getProfileActionConditionInterfaceVector().remove(profileActionScriptNodeInterface)
        self.remove(profileActionScriptNodeInterface)
    end
    java_overload :removeCondition, 1
    

    def addCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "addCondition")
        self.getProfileActionConditionInterfaceVector().add(profileActionScriptNodeInterface)
        self.add(profileActionScriptNodeInterface)
    end
    java_overload :addCondition, 1
    

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
    java_overload :toXmlNode, 1
    

    def getProfileActionConditionInterfaceVector()
        return @profileActionConditionInterfaceVector
    end
    java_overload :getProfileActionConditionInterfaceVector, 0
    

    def setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector)
        @profileActionConditionInterfaceVector = profileActionConditionInterfaceVector
    end
    java_overload :setProfileActionConditionInterfaceVector, 1
    

    def actionPerformed(actionEvent)
        begin
            BasicProfileActionScriptCondition.superclass.java_super_method(:actionPerformed, 1).bind(self).call(actionEvent)
            if actionEvent.getActionCommand().compareTo(DELETE) == 0
                if self.getParent().is_a?(::Org::Allbinary::Input::Automation::Actions::Script::ProfileActionScriptNodeInterface)
                    profileActionScriptNodeInterface = self.getParent()
                    profileActionScriptNodeInterface.removeCondition(self)
                    ::Org::Allbinary::Input::Automation::Actions::Script::JTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree()
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
                self.addProcessor(::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::Input::KeyboardActionScriptInput.new())
                self.updateTree()
            elsif actionEvent.getActionCommand().compareTo(NEW_MOUSE_INPUT) == 0
                self.addProcessor(::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::Input::MouseActionScriptInput.new())
                self.updateTree()
            elsif actionEvent.getActionCommand().compareTo(NEW_IMAGE_OUTPUT) == 0
                self.addProcessor(::Org::Allbinary::Input::Automation::ModulePackage::Actions::Script::Condition::Processors::Output::ImageActionScriptOutput.new())
                self.updateTree()
            end
        rescue StandardError => e
            @logUtil.put("Error", self, "actionPerformed", e)
        end
    end
    java_overload :actionPerformed, 1
    

    def getProfileActionProcessorInterfaceVector()
        return @profileActionProcessorInterfaceVector
    end
    java_overload :getProfileActionProcessorInterfaceVector, 0
    

    def setProfileActionProcessorInterfaceVector(profileActionProcessorInterfaceVector)
        @profileActionProcessorInterfaceVector = profileActionProcessorInterfaceVector
    end
    java_overload :setProfileActionProcessorInterfaceVector, 1
    

    def updateTree()
        ::Org::Allbinary::Input::Automation::Actions::Script::JTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree()
        treePath = TreePath.new(self)
        ::Org::Allbinary::Input::Automation::Actions::Script::JTreeInterfaceFactory.getInstance().getJTreeInterface().getActionScriptJTree().expandPath(treePath)
    end
    java_overload :updateTree, 0
    

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
    java_overload :shouldProcess, 1
    

    # throws Exception
    def process(frame)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Start - Processing ").appendint(self.getProfileActionProcessorInterfaceVector().size()).append(" inputs").to_s, self, @commonStrings.PROCESS)
        profileActionProcessorInterfaceVector = self.getProfileActionProcessorInterfaceVector()
        size = profileActionProcessorInterfaceVector.size()
        (0...size).each do |index|
            profileActionScriptProcessorInterface = profileActionProcessorInterfaceVector.get(index)
            profileActionScriptProcessorInterface.process(frame)
        end
    end
    java_overload :process, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; autoload :JTreeInterfaceFactory, "org/allbinary/input/automation/actions/script/JTreeInterfaceFactory" unless const_defined?(:JTreeInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; autoload :ProfileActionScriptNodeInterface, "org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface" unless const_defined?(:ProfileActionScriptNodeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; autoload :ProfileActionScriptProcessorInterface, "org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface" unless const_defined?(:ProfileActionScriptProcessorInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input; autoload :GenericProfileActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/GenericProfileActionScriptInputData" unless const_defined?(:GenericProfileActionScriptInputData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input; autoload :KeyboardActionScriptInput, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInput" unless const_defined?(:KeyboardActionScriptInput, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input; autoload :MouseActionScriptInput, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInput" unless const_defined?(:MouseActionScriptInput, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input; autoload :ProfileActionScriptInputFactory, "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputFactory" unless const_defined?(:ProfileActionScriptInputFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output; autoload :GenericProfileActionScriptOutputData, "org/allbinary/input/automation/module/actions/script/condition/processors/output/GenericProfileActionScriptOutputData" unless const_defined?(:GenericProfileActionScriptOutputData, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output; autoload :ImageActionScriptOutput, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutput" unless const_defined?(:ImageActionScriptOutput, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output; autoload :ProfileActionScriptOutputFactory, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputFactory" unless const_defined?(:ProfileActionScriptOutputFactory, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :AlwaysActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition" unless const_defined?(:AlwaysActionScriptCondition, false)
autoload :ColorAtActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition" unless const_defined?(:ColorAtActionScriptCondition, false)
autoload :GenericProfileActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/GenericProfileActionScriptConditionData" unless const_defined?(:GenericProfileActionScriptConditionData, false)
autoload :ProfileActionScriptConditionFactory, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionFactory" unless const_defined?(:ProfileActionScriptConditionFactory, false)
autoload :TimeIntervalActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition" unless const_defined?(:TimeIntervalActionScriptCondition, false)

end; end; end; end; end; end; end

