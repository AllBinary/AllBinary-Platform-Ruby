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
# package org.allbinary.input.automation.actions.script

require "java/lang/JavaOverload"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/JPopupMenu"
# require "javax/swing/JMenuItem"
# require "javax/swing/tree/DefaultMutableTreeNode"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptItemInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script

class ProfileActionScriptItem < DefaultMutableTreeNode
    include ProfileActionScriptItemInterface
    include ActionListener
    attr_accessor :logUtil, :commonStrings, :jPopupMenu

    def jfields_org_allbinary_input_automation_actions_script_ProfileActionScriptItem
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @jPopupMenu = nil unless instance_variable_defined?(:@jPopupMenu)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_actions_script_ProfileActionScriptItem_2(*args)
        when 1 then jnew_org_allbinary_input_automation_actions_script_ProfileActionScriptItem_1(*args)
        else raise ArgumentError, "No constructor of ProfileActionScriptItem takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_ProfileActionScriptItem_2(label, node)
        ProfileActionScriptItem.superclass.instance_method(:initialize).bind(self).call(label)
        jfields_org_allbinary_input_automation_actions_script_ProfileActionScriptItem
        self.init()
        @logUtil.putF("Label: " + label, self, @commonStrings.CONSTRUCTOR)
    end
    

    def jnew_org_allbinary_input_automation_actions_script_ProfileActionScriptItem_1(label)
        ProfileActionScriptItem.superclass.instance_method(:initialize).bind(self).call(label)
        jfields_org_allbinary_input_automation_actions_script_ProfileActionScriptItem
        self.init()
        @logUtil.putF("Label: " + label, self, @commonStrings.CONSTRUCTOR)
    end
    

    def init()
        self.setJPopupMenu(JPopupMenu.new())
        jMenuItemEdit = JMenuItem.new(EDIT)
        jMenuItemDelete = JMenuItem.new(DELETE)
        jMenuItemEdit.addActionListener(self)
        jMenuItemDelete.addActionListener(self)
        self.getJPopupMenu().add(jMenuItemEdit)
        self.getJPopupMenu().add(jMenuItemDelete)
    end
    java_overload :init, 0
    

    # throws Exception
    def process(frame)
        raise RuntimeError.new()
    end
    java_overload :process, 1
    

    def getJPopupMenu()
        return @jPopupMenu
    end
    java_overload :getJPopupMenu, 0
    

    def showDialog()
        raise RuntimeError.new()
    end
    java_overload :showDialog, 0
    

    def actionPerformed(actionEvent)
        if actionEvent.getActionCommand().compareTo(ProfileActionScriptItem::EDIT) == 0
            self.showDialog()
        end
    end
    java_overload :actionPerformed, 1
    

    def setJPopupMenu(jPopupMenu)
        @jPopupMenu = jPopupMenu
    end
    java_overload :setJPopupMenu, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:EDIT, "Edit")
        const_set(:DELETE, "Delete")
        const_set(:NEW_CONDITION, "New Condition")
        const_set(:NEW_INPUT, "New Input")
        const_set(:NEW_OUTPUT, "New Output")
        const_set(:NEW_COLOR_AT, "Color At")
        const_set(:NEW_TIME_INTERVAL, "Time Interval")
        const_set(:NEW_ALWAYS, "Always On/Off")
        const_set(:NEW_KEY_INPUT, "Key")
        const_set(:NEW_MOUSE_INPUT, "Mouse")
        const_set(:NEW_JOYSTICK_INPUT, "Joystick")
        const_set(:NEW_IMAGE_OUTPUT, "Image")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ProfileActionScriptItem"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:EDIT, :DELETE, :NEW_CONDITION, :NEW_INPUT, :NEW_OUTPUT, :NEW_COLOR_AT, :NEW_TIME_INTERVAL, :NEW_ALWAYS, :NEW_KEY_INPUT, :NEW_MOUSE_INPUT, :NEW_JOYSTICK_INPUT, :NEW_IMAGE_OUTPUT].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

begin
    ProfileActionScriptItem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

