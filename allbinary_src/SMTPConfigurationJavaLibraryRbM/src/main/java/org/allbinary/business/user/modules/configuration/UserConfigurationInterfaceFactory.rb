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
# package org.allbinary.business.user.modules.configuration


class UserConfigurationInterfaceFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(document)
        configurationNode = DomSearchHelper.getNode(UserConfigurationData::NAME, document.getChildNodes())
        return UserConfigurationView.new(configurationNode).getUserConfigurationInterface()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(userRole)
        abPath = AbPath.new(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().USERCONFIGURATIONPATH, (UserConfigurationInterfaceFactory.configurationName).to_s + userRole.to_s + (AbPathData.getInstance().EXTENSION_SEP).to_s + (UserConfigurationData::UNCRYPTED_EXTENSION).to_s)
        documentString = CryptFileReader.new(UserConfigurationData::UNCRYPTED_EXTENSION, UserConfigurationData::ENCRYPTED_EXTENSION).get(abPath)
        document = DomDocumentHelper.create(documentString)
        return UserConfigurationInterfaceFactory.getInstance(document)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance()
        return UserConfiguration.new()
    end

    def self.configurationName()
        UserConfigurationInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@configurationName) ? @@configurationName : nil
    end

    def self.configurationName=(value)
        UserConfigurationInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@configurationName = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@configurationName = "DefaultUserConfiguration"
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserConfigurationInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :UserRole, "org/allbinary/business/user/role/UserRole"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :UserConfiguration, "org/allbinary/business/user/modules/configuration/UserConfiguration"
autoload :UserConfigurationData, "org/allbinary/business/user/modules/configuration/UserConfigurationData"
autoload :UserConfigurationInterface, "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"
autoload :UserConfigurationView, "org/allbinary/business/user/modules/configuration/UserConfigurationView"

begin
    UserConfigurationInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

