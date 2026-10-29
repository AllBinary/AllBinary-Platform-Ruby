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
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Node"

class ProfileActionScriptItem
    EDIT = "Edit"
    DELETE = "Delete"
    NEW_CONDITION = "New Condition"
    NEW_INPUT = "New Input"
    NEW_OUTPUT = "New Output"
    NEW_COLOR_AT = "Color At"
    NEW_TIME_INTERVAL = "Time Interval"
    NEW_ALWAYS = "Always On/Off"
    NEW_KEY_INPUT = "Key"
    NEW_MOUSE_INPUT = "Mouse"
    NEW_JOYSTICK_INPUT = "Joystick"
    NEW_IMAGE_OUTPUT = "Image"
end

