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

# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing"
# require "javax/swing/tree/DefaultMutableTreeNode"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptItemInterface"

class ProfileActionScriptItem < DefaultMutableTreeNode
    include ProfileActionScriptItemInterface
    include ActionListener
    attr_accessor :logUtil, :commonStrings, :jPopupMenu

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @jPopupMenu = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(label, node)
        method(:initialize).super_method.call(label)
        initialize_fields
        self.init()
        @logUtil.putF("Label: " + label, self, @commonStrings.CONSTRUCTOR)
    end
    

    def constructor1(label)
        method(:initialize).super_method.call(label)
        initialize_fields
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
    

    # throws Exception
    def process(frame)
        raise RuntimeError.new()
    end
    

    def getJPopupMenu()
        return @jPopupMenu
    end
    

    def showDialog()
        raise RuntimeError.new()
    end
    

    def actionPerformed(actionEvent)
        if actionEvent.getActionCommand().compareTo(ProfileActionScriptItem::EDIT) == 0
            self.showDialog()
        end
    end
    

    def setJPopupMenu(jPopupMenu)
        @jPopupMenu = jPopupMenu
    end

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

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Node, "org/w3c/dom/Node"

begin
    ProfileActionScriptItem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

