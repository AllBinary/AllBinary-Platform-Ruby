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


module ::Org; module Allbinary; module Business; module Context; module Configuration

class ContextConfigurationInterfaceFactory
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def getInstance_j1_1(document)
        contextConfigurationData = ContextConfigurationData.getInstance()
        contextConfigurationNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(contextConfigurationData.NAME, document.getChildNodes())
        return ContextConfigurationView.new(contextConfigurationNode).getContextConfigurationInterface()
    end
    

    # throws Exception
    def getInstance_j1_2(contextName)
        abPath = ContextConfigurationPathUtil.getAbPath(contextName)
        contextConfigurationData = ContextConfigurationData.getInstance()
        documentString = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(contextConfigurationData.UNCRYPTED_EXTENSION, contextConfigurationData.ENCRYPTED_EXTENSION).get(abPath)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(documentString)
        return self.getInstance(document)
    end

    def getInstance(*java_overload_args)
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j1(*java_overload_args)
        return getInstance_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document))
        return getInstance_j1_2(*java_overload_args)
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

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :ContextConfigurationData, "org/allbinary/business/context/configuration/ContextConfigurationData" unless const_defined?(:ContextConfigurationData, false)
autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface" unless const_defined?(:ContextConfigurationInterface, false)
autoload :ContextConfigurationPathUtil, "org/allbinary/business/context/configuration/ContextConfigurationPathUtil" unless const_defined?(:ContextConfigurationPathUtil, false)
autoload :ContextConfigurationView, "org/allbinary/business/context/configuration/ContextConfigurationView" unless const_defined?(:ContextConfigurationView, false)

begin
    ContextConfigurationInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

