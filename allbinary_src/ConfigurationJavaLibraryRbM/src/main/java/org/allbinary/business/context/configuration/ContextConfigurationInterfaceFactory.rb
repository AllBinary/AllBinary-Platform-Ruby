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
        ContextConfigurationInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ContextConfigurationInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ContextConfigurationInterfaceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ContextConfigurationInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :ContextConfigurationData, "org/allbinary/business/context/configuration/ContextConfigurationData"
autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface"
autoload :ContextConfigurationPathUtil, "org/allbinary/business/context/configuration/ContextConfigurationPathUtil"
autoload :ContextConfigurationView, "org/allbinary/business/context/configuration/ContextConfigurationView"

begin
    ContextConfigurationInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

