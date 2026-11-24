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
# require "javax/swing/tree/DefaultMutableTreeNode"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script

class GenericProfileActionScript < DefaultMutableTreeNode
    include ::Org::Allbinary::Input::Automation::Actions::Script::ProfileActionScriptNodeInterface
    attr_accessor :logUtil, :commonStrings, :genericProfileActionJPanel, :profileActionConditionInterfaceVector

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScript
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @genericProfileActionJPanel = nil unless instance_variable_defined?(:@genericProfileActionJPanel)
        @profileActionConditionInterfaceVector = nil unless instance_variable_defined?(:@profileActionConditionInterfaceVector)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScript_2(*args)
        when 1 then jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScript_1(*args)
        else raise ArgumentError, "No constructor of GenericProfileActionScript takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScript_2(genericProfileActionJPanel, node)
        GenericProfileActionScript.superclass.instance_method(:initialize).bind(self).call(NAME)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScript
        @genericProfileActionJPanel = genericProfileActionJPanel
        self.setProfileActionConditionInterfaceVector(::Org::Allbinary::Util::BasicArrayListD.new())
        actionScriptNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::GenericProfileActionData::SCRIPT, node.getChildNodes())
        if actionScriptNode != nil
            nodeList = actionScriptNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                actionConditionNode = nodeList.item(index)
                if actionConditionNode.getNodeType() == ::Org::W3c::Dom::Node::ELEMENT_NODE
                    self.addCondition(::Org::Allbinary::Input::Automation::Actions::Script::Condition::ProfileActionScriptConditionFactory.getInstance(actionConditionNode))
                end
            end
        else
            raise StandardError.new("Profile Action Script Node Null")
        end
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScript_1(genericProfileActionJPanel)
        GenericProfileActionScript.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_GenericProfileActionScript
        @genericProfileActionJPanel = genericProfileActionJPanel
        self.setProfileActionConditionInterfaceVector(::Org::Allbinary::Util::BasicArrayListD.new())
    end
    

    def addCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "addCondition")
        self.getProfileActionConditionInterfaceVector().add(profileActionScriptNodeInterface)
        self.add(profileActionScriptNodeInterface)
    end
    java_overload :addCondition, 1
    

    def removeCondition(profileActionScriptNodeInterface)
        @logUtil.putF(@commonStrings.START, self, "removeCondition")
        self.getProfileActionConditionInterfaceVector().remove(profileActionScriptNodeInterface)
        self.remove(profileActionScriptNodeInterface)
    end
    java_overload :removeCondition, 1
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    def getProfileActionConditionInterfaceVector()
        return @profileActionConditionInterfaceVector
    end
    java_overload :getProfileActionConditionInterfaceVector, 0
    

    def setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector)
        @profileActionConditionInterfaceVector = profileActionConditionInterfaceVector
    end
    java_overload :setProfileActionConditionInterfaceVector, 1
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::GenericProfileActionData::SCRIPT)
        vector = self.getProfileActionConditionInterfaceVector()
        size = vector.size()
        (0...size).each do |index|
            profileActionConditionInterface = vector.get(index)
            node.appendChild(profileActionConditionInterface.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Root")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GenericProfileActionScript"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :ProfileActionScriptConditionFactory, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionFactory" unless const_defined?(:ProfileActionScriptConditionFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :ProfileActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface" unless const_defined?(:ProfileActionScriptConditionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActionData, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData" unless const_defined?(:GenericProfileActionData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActionJPanel, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel" unless const_defined?(:GenericProfileActionJPanel, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end

begin
    GenericProfileActionScript.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end; end

