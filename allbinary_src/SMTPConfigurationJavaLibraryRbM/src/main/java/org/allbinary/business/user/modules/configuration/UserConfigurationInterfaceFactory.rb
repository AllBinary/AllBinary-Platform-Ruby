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


module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration

class UserConfigurationInterfaceFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance_j1_1(document)
        configurationNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(UserConfigurationData::NAME, document.getChildNodes())
        return UserConfigurationView.new(configurationNode).getUserConfigurationInterface()
    end
    

    # throws Exception
    def self.getInstance_j1_2(userRole)
        abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().USERCONFIGURATIONPATH, (@@configurationName).to_s + userRole.to_s + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP).to_s + (UserConfigurationData::UNCRYPTED_EXTENSION).to_s)
        documentString = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(UserConfigurationData::UNCRYPTED_EXTENSION, UserConfigurationData::ENCRYPTED_EXTENSION).get(abPath)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(documentString)
        return UserConfigurationInterfaceFactory.getInstance(document)
    end
    

    # throws Exception
    def self.getInstance_j0()
        return UserConfiguration.new()
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        return getInstance_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def self.getInstance_j1(*java_overload_args)
        return getInstance_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document))
        return getInstance_j1_2(*java_overload_args)
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

module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :UserConfiguration, "org/allbinary/business/user/modules/configuration/UserConfiguration" unless const_defined?(:UserConfiguration, false)
autoload :UserConfigurationData, "org/allbinary/business/user/modules/configuration/UserConfigurationData" unless const_defined?(:UserConfigurationData, false)
autoload :UserConfigurationInterface, "org/allbinary/business/user/modules/configuration/UserConfigurationInterface" unless const_defined?(:UserConfigurationInterface, false)
autoload :UserConfigurationView, "org/allbinary/business/user/modules/configuration/UserConfigurationView" unless const_defined?(:UserConfigurationView, false)

begin
    UserConfigurationInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

