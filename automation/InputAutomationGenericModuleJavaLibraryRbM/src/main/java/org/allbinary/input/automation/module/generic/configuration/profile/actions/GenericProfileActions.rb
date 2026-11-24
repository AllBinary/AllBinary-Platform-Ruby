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
require "java/lang/JavaClass"
# require "java/io/File"
# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions

class GenericProfileActions
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::Document::Mapping::DomDocumentMappingInterface
    attr_accessor :logUtil, :commonFileStrings, :name, :genericProfileActionsJPanel, :actionsDefaultListModelHelper, :hashMap

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonFileStrings = ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @genericProfileActionsJPanel = nil unless instance_variable_defined?(:@genericProfileActionsJPanel)
        @actionsDefaultListModelHelper = nil unless instance_variable_defined?(:@actionsDefaultListModelHelper)
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_2(*args)
        when 3 then jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_3(*args)
        else raise ArgumentError, "No constructor of GenericProfileActions takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_3(*java_overload_args)
        return jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(GenericProfileActionsJPanel)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_3_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_2(genericProfileActionsJPanel, name)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions
        self.setName(name)
        self.init(genericProfileActionsJPanel)
        self.load()
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_3_1(genericProfileActionsJPanel, abPath, name)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions
        self.setName(name)
        self.init(genericProfileActionsJPanel)
        self.load()
    end
    

    def jnew_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions_3_2(genericProfileActionsJPanel, fileInputStream, name)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActions
        self.setName(name)
        self.init(genericProfileActionsJPanel)
        self.fileInit(fileInputStream)
    end
    

    # throws Exception
    def init(genericProfileActionsJPanel)
        self.setGenericProfileActionsJPanel(genericProfileActionsJPanel)
        @actionsDefaultListModelHelper = ::Org::Allbinary::Input::Automation::ModulePackage::DefaultListModelHelper.new()
        self.setHashMap(::Java::Util::HashMap.new())
    end
    java_overload :init, 1
    

    # throws Exception
    def save()
        idFile = ::Java::Io::FileOutputStream.new((GenericProfileActions::DEFAULT_PROFILE_ACTIONS_PATH).to_s + getName() + (@commonFileStrings._XML).to_s)
        idOutData = ::Java::Io::DataOutputStream.new(idFile)
        idOutData.writeBytes(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(self.toXmlDoc()))
    end
    java_overload :save, 0
    

    def getFile(name)
        fileName = DEFAULT_PROFILE_ACTIONS_PATH + name + (@commonFileStrings._XML).to_s
        return File.new(fileName)
    end
    java_overload :getFile, 1
    

    # throws Exception
    def load()
        file = self.getFile(getName())
        if file.isFile()
            idFile = ::Java::Io::FileInputStream.new(file)
            self.fileInit(idFile)
        else
            @logUtil.putF("No Profile: " + (file.getAbsolutePath()).to_s, self, "Contructor")
        end
    end
    java_overload :load, 0
    

    # throws Exception
    def fileInit(fileInputStream)
        bytes = (Array.new(100000, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
        length = fileInputStream.read(bytes)
        data = bytes.pack("c*").force_encoding("UTF-8")
        endIndex = (data.rindex(">") || -1)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data[0...endIndex + 1])
        nameNodeList = document.getElementsByTagName(GenericProfileActionsData::NAME)
        @logUtil.putF("Number Of Profiles Specified: " + (nameNodeList.getLength()).to_s, self, "Contructor")
        (0...nameNodeList.getLength()).each do |index|
            node = nameNodeList.item(index)
            nodeList = node.getChildNodes()
            if nodeList != nil
                self.initActions(nodeList)
            else
                raise StandardError.new((GenericProfileActionData::NAME).to_s + " Name Node Node Children")
            end
        end
        @logUtil.putF("Loaded: " + (self.getHashMap().size()).to_s + " Configuration Profile Action(s)", self, "Contructor")
        self.getDefaultListModelHelper().initDefaultModelList()
    end
    java_overload :fileInit, 1
    

    # throws Exception
    def initActions(nodeList)
        (0...nodeList.getLength()).each do |index|
            actionNode = nodeList.item(index)
            if actionNode != nil
                genericConfigurationProfileAction = GenericProfileAction.new(self.getGenericProfileActionsJPanel().getGenericProfileActionJPanel(), actionNode)
                self.getHashMap().put(genericConfigurationProfileAction.getName(), genericConfigurationProfileAction)
                self.getDefaultListModelHelper().add(genericConfigurationProfileAction.getName())
            else
                raise StandardError.new((GenericProfileActionData::NAME).to_s + " Node Null")
            end
        end
    end
    java_overload :initActions, 1
    

    def getDefaultListModelHelper()
        return @actionsDefaultListModelHelper
    end
    java_overload :getDefaultListModelHelper, 0
    

    def getAction(string)
        return self.getHashMap().get(string)
    end
    java_overload :getAction, 1
    

    # throws Exception
    def add(name)
        genericProfileAction = GenericProfileAction.new(name)
        self.getHashMap().put(genericProfileAction.getName(), genericProfileAction)
        self.getDefaultListModelHelper().add(genericProfileAction.getName())
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    java_overload :add, 1
    

    # throws Exception
    def remove(name)
        self.getHashMap().remove(name)
        self.getDefaultListModelHelper().remove(name)
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    java_overload :remove, 1
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionsData::NAME)
        set = self.getHashMap().keySet()
        actionNameArray = set.toArray()
        size = actionNameArray.length
        (0...size).each do |index|
            nextActionName = actionNameArray[index]
            nextGenericProfileAction = self.getAction(nextActionName)
            node.appendChild(nextGenericProfileAction.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def toXmlDoc()
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        node = self.toXmlNode(document)
        document.appendChild(node)
        return document
    end
    java_overload :toXmlDoc, 0
    

    def getGenericProfileActionsJPanel()
        return @genericProfileActionsJPanel
    end
    java_overload :getGenericProfileActionsJPanel, 0
    

    def setGenericProfileActionsJPanel(genericProfileActionsJPanel)
        @genericProfileActionsJPanel = genericProfileActionsJPanel
    end
    java_overload :setGenericProfileActionsJPanel, 1
    

    def getHashMap()
        return @hashMap
    end
    java_overload :getHashMap, 0
    

    def setHashMap(hashMap)
        @hashMap = hashMap
    end
    java_overload :setHashMap, 1
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DEFAULT_PROFILE_ACTIONS_PATH, (::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfiles::DEFAULT_PROFILES_PATH).to_s + "actions/")
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GenericProfileActions"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DEFAULT_PROFILE_ACTIONS_PATH].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :DataOutputStream, "java/io/DataOutputStream" unless const_defined?(:DataOutputStream, false); end; end
module ::Java; module Io; autoload :FileInputStream, "java/io/FileInputStream" unless const_defined?(:FileInputStream, false); end; end
module ::Java; module Io; autoload :FileOutputStream, "java/io/FileOutputStream" unless const_defined?(:FileOutputStream, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :DefaultListModelHelper, "org/allbinary/input/automation/module/DefaultListModelHelper" unless const_defined?(:DefaultListModelHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfiles, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfiles" unless const_defined?(:GenericProfiles, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :CommonDataFileStrings, "org/allbinary/logic/io/file/CommonDataFileStrings" unless const_defined?(:CommonDataFileStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :GenericProfileAction, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction" unless const_defined?(:GenericProfileAction, false)
autoload :GenericProfileActionData, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData" unless const_defined?(:GenericProfileActionData, false)
autoload :GenericProfileActionsData, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsData" unless const_defined?(:GenericProfileActionsData, false)
autoload :GenericProfileActionsJPanel, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsJPanel" unless const_defined?(:GenericProfileActionsJPanel, false)

begin
    GenericProfileActions.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

