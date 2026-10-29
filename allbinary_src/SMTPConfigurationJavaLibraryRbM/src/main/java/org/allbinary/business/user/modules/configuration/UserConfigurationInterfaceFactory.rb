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
        return defined?(@@configurationName) ? @@configurationName : nil
    end

    def self.configurationName=(value)
        @@configurationName = value
    end
end

require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/modules/configuration/UserConfiguration"
require "org/allbinary/business/user/modules/configuration/UserConfigurationData"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"
require "org/allbinary/business/user/modules/configuration/UserConfigurationView"

class UserConfigurationInterfaceFactory
    @@configurationName = "DefaultUserConfiguration"
end

