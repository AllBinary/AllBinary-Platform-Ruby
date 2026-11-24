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
# package org.allbinary.input.automation.module.generic.configuration.profile

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile

class GenericProfile
    attr_accessor :logUtil, :name, :vector, :genericProfileActions

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @vector = nil unless instance_variable_defined?(:@vector)
        @genericProfileActions = nil unless instance_variable_defined?(:@genericProfileActions)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile_1(*args)
        else raise ArgumentError, "No constructor of GenericProfile takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile_1(*java_overload_args)
        return jnew_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile_1_1(node)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile
        self.setName(::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(node))
        @vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        nodeList = node.getChildNodes()
        @logUtil.putF("Name: " + self.getName() + " Child Nodes: " + (nodeList.getLength()).to_s, self, "Contructor")
        (0...nodeList.getLength()).each do |index|
            profileNode = nodeList.item(index)
            if profileNode.getNodeName().compareTo(GenericProfileDataWorkerData::NAME) == 0
                genericProfileDataWorkerType = GenericProfileDataWorkerType.getInstance(profileNode)
                @logUtil.putF("Adding GenericProfileDataWorkerType: " + genericProfileDataWorkerType.to_s, self, "Contructor")
                @vector.add(genericProfileDataWorkerType)
            end
        end
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile_1_2(name)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfile
        self.setName(name)
        @vector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def getGenericProfileDataWorkerTypeVector()
        return @vector
    end
    

    def add(genericProfileDataWorkerType)
        if !@vector.contains(genericProfileDataWorkerType)
            @vector.add(genericProfileDataWorkerType)
        end
    end
    

    def remove(genericProfileDataWorkerType)
        @vector.remove(genericProfileDataWorkerType)
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, GenericProfileData::NAME, @name)
        size = @vector.size()
        (0...size).each do |index|
            genericProfileDataWorkerType = @vector.get(index)
            node.appendChild(genericProfileDataWorkerType.toXmlNode(document))
        end
        return node
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def getGenericProfileActions()
        return @genericProfileActions
    end
    

    def setGenericProfileActions(genericProfileActions)
        @genericProfileActions = genericProfileActions
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActions, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions" unless const_defined?(:GenericProfileActions, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :GenericProfileData, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileData" unless const_defined?(:GenericProfileData, false)
autoload :GenericProfileDataWorkerData, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerData" unless const_defined?(:GenericProfileDataWorkerData, false)
autoload :GenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType" unless const_defined?(:GenericProfileDataWorkerType, false)

end; end; end; end; end; end; end; end

