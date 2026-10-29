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
# package org.allbinary.business.context.configuration


class ContextConfigurationInterfaceFactory
    

    def self.getInstance()
        return ContextConfigurationInterfaceFactory.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(document)
        contextConfigurationData = ContextConfigurationData.getInstance()
        contextConfigurationNode = DomSearchHelper.getNode(contextConfigurationData.NAME, document.getChildNodes())
        return ContextConfigurationView.new(contextConfigurationNode).getContextConfigurationInterface()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(contextName)
        abPath = ContextConfigurationPathUtil.getAbPath(contextName)
        contextConfigurationData = ContextConfigurationData.getInstance()
        documentString = CryptFileReader.new(contextConfigurationData.UNCRYPTED_EXTENSION, contextConfigurationData.ENCRYPTED_EXTENSION).get(abPath)
        document = DomDocumentHelper.create(documentString)
        return self.getInstance(document)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbPath"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/context/configuration/ContextConfigurationData"
require "org/allbinary/business/context/configuration/ContextConfigurationInterface"
require "org/allbinary/business/context/configuration/ContextConfigurationPathUtil"
require "org/allbinary/business/context/configuration/ContextConfigurationView"

class ContextConfigurationInterfaceFactory
    @@instance = ContextConfigurationInterfaceFactory.new()
end

