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
# package org.allbinary.input.automation.module.generic.configuration.profile.actions

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions

class GenericProfileAction
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :name, :genericProfileActionScript, :genericProfileActionJPanel

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileAction
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @genericProfileActionScript = nil unless instance_variable_defined?(:@genericProfileActionScript)
        @genericProfileActionJPanel = nil unless instance_variable_defined?(:@genericProfileActionJPanel)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileAction_2(*args)
        when 1 then jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileAction_1(*args)
        else raise ArgumentError, "No constructor of GenericProfileAction takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileAction_2(genericProfileActionJPanel, node)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileAction
        actionNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(GenericProfileActionData::NAME, node.getChildNodes())
        if actionNameNode != nil
            @name = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(actionNameNode)
        else
            raise StandardError.new("Profile Action Name Node Null")
        end
        self.setGenericProfileActionScript(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::Script::GenericProfileActionScript.new(@genericProfileActionJPanel, node))
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileAction_1(name)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileAction
        @name = name
        self.setGenericProfileActionScript(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::Script::GenericProfileActionScript.new(@genericProfileActionJPanel))
    end
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(GenericProfileActionData::NAME, @name)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, GenericProfileActionData::NAME, self.toHashMap())
        node.appendChild(getGenericProfileActionScript().toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
    

    def getGenericProfileActionScript()
        return @genericProfileActionScript
    end
    java_overload :getGenericProfileActionScript, 0
    

    def setGenericProfileActionScript(genericProfileActionScript)
        @genericProfileActionScript = genericProfileActionScript
    end
    java_overload :setGenericProfileActionScript, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script; autoload :GenericProfileActionScript, "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript" unless const_defined?(:GenericProfileActionScript, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GenericProfileActionData, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData" unless const_defined?(:GenericProfileActionData, false)
autoload :GenericProfileActionJPanel, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel" unless const_defined?(:GenericProfileActionJPanel, false)

end; end; end; end; end; end; end; end; end

