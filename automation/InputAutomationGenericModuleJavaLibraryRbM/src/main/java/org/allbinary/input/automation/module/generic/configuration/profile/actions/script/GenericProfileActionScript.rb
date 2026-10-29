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

# require "javax/swing/tree/DefaultMutableTreeNode"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface"

class GenericProfileActionScript < DefaultMutableTreeNode
    include ProfileActionScriptNodeInterface
    attr_accessor :logUtil, :commonStrings, :genericProfileActionJPanel, :profileActionConditionInterfaceVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @genericProfileActionJPanel = nil
        @profileActionConditionInterfaceVector = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(genericProfileActionJPanel, node)
        method(:initialize).super_method.call(NAME)
        initialize_fields
        @genericProfileActionJPanel = genericProfileActionJPanel
        self.setProfileActionConditionInterfaceVector(BasicArrayListD.new())
        actionScriptNode = DomSearchHelper.getNode(GenericProfileActionData::SCRIPT, node.getChildNodes())
        if actionScriptNode != nil
            nodeList = actionScriptNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                actionConditionNode = nodeList.item(index)
                if actionConditionNode.getNodeType() == Node::ELEMENT_NODE
                    self.addCondition(ProfileActionScriptConditionFactory.getInstance(actionConditionNode))
                end
            end
        else
            raise StandardError.new("Profile Action Script Node Null")
        end
    end
    

    def constructor1(genericProfileActionJPanel)
        method(:initialize).super_method.call()
        initialize_fields
        @genericProfileActionJPanel = genericProfileActionJPanel
        self.setProfileActionConditionInterfaceVector(BasicArrayListD.new())
    end
    

    def addCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "addCondition")
        self.getProfileActionConditionInterfaceVector().add(profileActionScriptNodeInterface)
        self.add(profileActionScriptNodeInterface)
    end
    

    def removeCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "removeCondition")
        self.getProfileActionConditionInterfaceVector().remove(profileActionScriptNodeInterface)
        self.remove(profileActionScriptNodeInterface)
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    def getProfileActionConditionInterfaceVector()
        return @profileActionConditionInterfaceVector
    end
    

    def setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector)
        @profileActionConditionInterfaceVector = profileActionConditionInterfaceVector
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionData::SCRIPT)
        vector = self.getProfileActionConditionInterfaceVector()
        size = vector.size()
        (0...size).each do |index|
            profileActionConditionInterface = vector.get(index)
            node.appendChild(profileActionConditionInterface.toXmlNode(document))
        end
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionFactory"
require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

class GenericProfileActionScript
    NAME = "Root"
end

