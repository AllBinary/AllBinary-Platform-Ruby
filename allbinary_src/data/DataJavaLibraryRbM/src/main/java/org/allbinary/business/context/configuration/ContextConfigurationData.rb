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

class ContextConfigurationData
    attr_accessor :NAME, :UNCRYPTED_EXTENSION, :ENCRYPTED_EXTENSION

    def jfields_org_allbinary_business_context_configuration_ContextConfigurationData
        @NAME = "CONTEXT_CONFIGURATION_NAME"
        @UNCRYPTED_EXTENSION = ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION
        @ENCRYPTED_EXTENSION = ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_context_configuration_ContextConfigurationData
    end

    def self.instance()
        ContextConfigurationData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ContextConfigurationData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ContextConfigurationData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ContextConfigurationData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :CommonDataFileStrings, "org/allbinary/logic/io/file/CommonDataFileStrings" unless const_defined?(:CommonDataFileStrings, false); end; end; end; end; end

begin
    ContextConfigurationData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

