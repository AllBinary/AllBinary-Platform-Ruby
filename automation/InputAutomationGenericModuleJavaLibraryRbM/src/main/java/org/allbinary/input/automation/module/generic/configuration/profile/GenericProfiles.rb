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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/io/File"
# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile

class GenericProfiles
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::Document::Mapping::DomDocumentMappingInterface
    attr_accessor :logUtil, :hashMap, :profilesDefaultListModelHelper, :fileName

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfiles
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
        @profilesDefaultListModelHelper = nil unless instance_variable_defined?(:@profilesDefaultListModelHelper)
        @fileName = nil unless instance_variable_defined?(:@fileName)
    end
    

    def initialize(fileName)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfiles
        @fileName = fileName
        @profilesDefaultListModelHelper = ::Org::Allbinary::Input::Automation::ModulePackage::DefaultListModelHelper.new()
        @hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        if File.new(fileName).isFile()
            bytes = (Array.new(100000, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            idFile = ::Java::Io::FileInputStream.new(fileName)
            length = idFile.read(bytes)
            data = bytes.pack("c*").force_encoding("UTF-8")
            endIndex = (data.rindex(">") || -1)
            document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data[0...endIndex + 1])
            nodeList = document.getElementsByTagName(GenericProfilesData::NAME)
            @logUtil.putF("Number Of Profiles Specified: " + (nodeList.getLength()).to_s, self, "Contructor")
            if nodeList != nil
                self.initProfiles(nodeList.item(0))
            else
                raise StandardError.new((::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::GenericProfileActionData::NAME).to_s + " Name Node Node Children")
            end
            @logUtil.putF("Loaded: " + (@hashMap.size()).to_s + " Configuration Profile Actions", self, "Contructor")
        else
            @logUtil.putF("No Generic Profile: " + fileName, self, "Contructor")
        end
        self.getDefaultListModelHelper().initDefaultModelList()
    end
    

    # throws Exception
    def initProfiles(node)
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            profileNameNode = nodeList.item(index)
            if profileNameNode.getNodeName().compareTo(GenericProfileData::NAME) == 0
                genericProfile = GenericProfile.new(profileNameNode)
                @hashMap.put(genericProfile.getName(), genericProfile)
                self.getDefaultListModelHelper().add(genericProfile.getName())
            end
        end
    end
    java_overload :initProfiles, 1
    

    def getDefaultListModelHelper()
        return @profilesDefaultListModelHelper
    end
    java_overload :getDefaultListModelHelper, 0
    

    # throws Exception
    def get(name)
        genericProfile = @hashMap.get(name)
        if genericProfile == nil
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF("No Generic Profile Named: " + name + " availability was: " + (@hashMap).to_s, self, commonStrings.GET)
        end
        return genericProfile
    end
    java_overload :get, 1
    

    # throws Exception
    def add(name)
        @hashMap.put(name, GenericProfile.new(name))
        self.getDefaultListModelHelper().add(name)
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    java_overload :add, 1
    

    # throws Exception
    def remove(name)
        @hashMap.remove(name)
        self.getDefaultListModelHelper().remove(name)
        self.getDefaultListModelHelper().initDefaultModelList()
        self.save()
    end
    java_overload :remove, 1
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfilesData::NAME)
        set = @hashMap.keySet()
        nameArray = set.toArray()
        size = nameArray.length
        (0...size).each do |index|
            genericProfile = @hashMap.get(nameArray[index])
            node.appendChild(genericProfile.toXmlNode(document))
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
    

    # throws Exception
    def save()
        idFile = ::Java::Io::FileOutputStream.new(@fileName)
        idOutData = ::Java::Io::DataOutputStream.new(idFile)
        documentString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(self.toXmlDoc())
        idOutData.writeBytes(documentString)
    end
    java_overload :save, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:DEFAULT_PROFILES_PATH, "./modules/configs/profiles/")
        begin
            const_set(:DEFAULT_PROFILE_ACTIONS_PATH, (GenericProfiles::DEFAULT_PROFILES_PATH).to_s + "actions/")
            const_set(:DEFAULT_FILE, (GenericProfiles::DEFAULT_PROFILES_PATH).to_s + "profiles.xml")
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GenericProfiles"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DEFAULT_PROFILES_PATH, :DEFAULT_PROFILE_ACTIONS_PATH, :DEFAULT_FILE].include?(name)
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
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActionData, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData" unless const_defined?(:GenericProfileActionData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile" unless const_defined?(:GenericProfile, false)
autoload :GenericProfileData, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileData" unless const_defined?(:GenericProfileData, false)
autoload :GenericProfilesData, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfilesData" unless const_defined?(:GenericProfilesData, false)

begin
    GenericProfiles.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

