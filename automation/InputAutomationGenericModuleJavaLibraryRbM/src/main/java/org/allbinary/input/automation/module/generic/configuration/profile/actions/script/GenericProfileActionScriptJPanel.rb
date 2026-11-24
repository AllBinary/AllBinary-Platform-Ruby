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

require "java/lang/JavaOverload"
# require "java/awt/event/MouseEvent"
# require "javax/swing/JPopupMenu"
# require "javax/swing/JComponent"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/DefaultTreeModel"
# require "javax/swing/tree/TreePath"
require "org/allbinary/input/automation/actions/script/JTreeInterface"
# require "java/awt/Dimension"
# require "java/awt/GridLayout"
# require "java/awt/event/MouseAdapter"
# require "javax/swing/JPanel"
# require "javax/swing/JScrollPane"
# require "javax/swing/JTree"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script

class GenericProfileActionScriptJPanel < JPanel
    include ::Org::Allbinary::Input::Automation::Actions::Script::JTreeInterface
    attr_accessor :logUtil, :commonStrings, :defaultMutableTreeNode, :genericProfileActionScript, :actionScriptJTree, :jScrollPane1

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScriptJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @defaultMutableTreeNode = DefaultMutableTreeNode.new("Root")
        @genericProfileActionScript = nil unless instance_variable_defined?(:@genericProfileActionScript)
        @actionScriptJTree = nil unless instance_variable_defined?(:@actionScriptJTree)
        @jScrollPane1 = nil unless instance_variable_defined?(:@jScrollPane1)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScriptJPanel
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
    end
    

    def updateJTree()
        defaultTreeModel = DefaultTreeModel.new(self.getGenericProfileActionScript())
        self.getActionScriptJTree().setModel(defaultTreeModel)
        self.repaint()
        @logUtil.putF("Updated UI", self, "updateJTree")
    end
    java_overload :updateJTree, 0
    

    def getGenericProfileActionScript()
        return @genericProfileActionScript
    end
    java_overload :getGenericProfileActionScript, 0
    

    def setGenericProfileActionScript(genericProfileActionScript)
        @genericProfileActionScript = genericProfileActionScript
    end
    java_overload :setGenericProfileActionScript, 1
    

    def getActionScriptJTree()
        return @actionScriptJTree
    end
    java_overload :getActionScriptJTree, 0
    

    def setActionScriptJTree(actionScriptJTree)
        @actionScriptJTree = actionScriptJTree
    end
    java_overload :setActionScriptJTree, 1
    

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
            java_overload :mouseClicked, 1
            

            def mouseReleased(evt)
                actionScriptJTreeMouseReleased(evt)
            end
            java_overload :mouseReleased, 1
        end.new())
        @jScrollPane1.setViewportView(@actionScriptJTree)
        add(@jScrollPane1)
    end
    java_overload :initComponents, 0
    

    def actionScriptJTreeMouseReleased(evt)
        button = evt.getButton()
        if button == MouseEvent::BUTTON3
            treePath = self.getActionScriptJTree().getSelectionPath()
            if treePath != nil
                anyType = treePath.getLastPathComponent()
                if anyType.is_a?(::Org::Allbinary::Input::Automation::Actions::Script::Condition::CustomTreeNodeInterface)
                    customTreeNodeInterface = anyType
                    jPopupMenu = customTreeNodeInterface.getJPopupMenu()
                    jPopupMenu.show(evt.getSource(), evt.getX(), evt.getY())
                end
            end
        end
    end
    java_overload :actionScriptJTreeMouseReleased, 1
    

    def actionScriptJTreeMouseClicked(evt)
    end
    java_overload :actionScriptJTreeMouseClicked, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :CustomTreeNodeInterface, "org/allbinary/input/automation/actions/script/condition/CustomTreeNodeInterface" unless const_defined?(:CustomTreeNodeInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GenericProfileActionScript, "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript" unless const_defined?(:GenericProfileActionScript, false)

end; end; end; end; end; end; end; end; end; end

