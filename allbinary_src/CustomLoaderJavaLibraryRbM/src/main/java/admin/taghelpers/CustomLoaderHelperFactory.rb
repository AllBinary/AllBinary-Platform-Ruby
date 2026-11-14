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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelperFactoryInterface"

class CustomLoaderHelperFactory
    include TagHelperFactoryInterface
    

    def initialize()
    end
    

    # throws LicensingException
    def getInstance(hashMap, pageContext)
        abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        return HelperFactory.getInstance(abeClientInformation, FACTORYNAME, CLASSNAME, hashMap, pageContext)
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation)
        return HelperFactory.getInstance(abeClientInformation, FACTORYNAME, CustomLoaderHelperFactory::CLASSNAME)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CLASSNAME, "admin.taghelpers.CustomLoaderHelper")
        const_set(:FACTORYNAME, "CustomLoaderHelperFactory")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CustomLoaderHelperFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CLASSNAME, :FACTORYNAME].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException"
autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
autoload :HelperFactory, "admin/taghelpers/HelperFactory"

begin
    CustomLoaderHelperFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

