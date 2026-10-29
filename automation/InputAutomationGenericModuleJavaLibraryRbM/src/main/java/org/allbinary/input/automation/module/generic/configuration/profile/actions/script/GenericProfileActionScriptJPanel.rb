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
# package org.allbinary.input.automation.module.generic.configuration.profile.actions.script

# require "java/awt/event/MouseEvent"
# require "javax/swing"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/DefaultTreeModel"
# require "javax/swing/tree/TreePath"
require "org/allbinary/input/automation/actions/script/JTreeInterface"

class GenericProfileActionScriptJPanel < JPanel
    include JTreeInterface
    attr_accessor :logUtil, :commonStrings, :defaultMutableTreeNode, :genericProfileActionScript, :actionScriptJTree, :jScrollPane1

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @defaultMutableTreeNode = DefaultMutableTreeNode.new("Root")
        @genericProfileActionScript = nil
        @actionScriptJTree = nil
        @jScrollPane1 = nil
    end
    

    def initialize()
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
    end
    

    def updateJTree()
        defaultTreeModel = DefaultTreeModel.new(self.getGenericProfileActionScript())
        self.getActionScriptJTree().setModel(defaultTreeModel)
        self.repaint()
        @logUtil.putF("Updated UI", self, "updateJTree")
    end
    

    def getGenericProfileActionScript()
        return @genericProfileActionScript
    end
    

    def setGenericProfileActionScript(genericProfileActionScript)
        @genericProfileActionScript = genericProfileActionScript
    end
    

    def getActionScriptJTree()
        return @actionScriptJTree
    end
    

    def setActionScriptJTree(actionScriptJTree)
        @actionScriptJTree = actionScriptJTree
    end
    

    def initComponents()
        @jScrollPane1 = JScrollPane.new()
        @actionScriptJTree = JTree.new()
        setLayout(GridLayout.new(1, 0))
        @actionScriptJTree.setPreferredSize(Dimension.new(500, 500))
        @actionScriptJTree.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mouseClicked(evt)
                actionScriptJTreeMouseClicked(evt)
            end
            

            def mouseReleased(evt)
                actionScriptJTreeMouseReleased(evt)
            end
        end.new())
        @jScrollPane1.setViewportView(@actionScriptJTree)
        add(@jScrollPane1)
    end
    

    def actionScriptJTreeMouseReleased(evt)
        button = evt.getButton()
        if button == MouseEvent::BUTTON3
            treePath = self.getActionScriptJTree().getSelectionPath()
            if treePath != nil
                anyType = treePath.getLastPathComponent()
                if anyType.is_a?(CustomTreeNodeInterface)
                    customTreeNodeInterface = anyType
                    jPopupMenu = customTreeNodeInterface.getJPopupMenu()
                    jPopupMenu.show(evt.getSource(), evt.getX(), evt.getY())
                end
            end
        end
    end
    

    def actionScriptJTreeMouseClicked(evt)
    end
end

require "org/allbinary/input/automation/actions/script/condition/CustomTreeNodeInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript"

