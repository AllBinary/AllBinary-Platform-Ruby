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
# package org.allbinary.business.user.modules.admin.configuration

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/user/modules/admin/configuration/AdminConfigurationInterface"

module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Configuration

class AdminConfiguration
    include AdminConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :contextConfigurationInterface

    def jfields_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @contextConfigurationInterface = nil unless instance_variable_defined?(:@contextConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_0(*args)
        when 1 then jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_1(*args)
        else raise ArgumentError, "No constructor of AdminConfiguration takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_1(*java_overload_args)
        return jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_0()
        jfields_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @contextConfigurationInterface = ::Org::Allbinary::Business::Context::Configuration::ContextConfigurationInterfaceFactory.getInstance().getInstance(AdminConfigurationData::CONTEXTNAME)
    end
    

    def jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_1_1(request)
        jfields_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.getFormData(::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(request).toHashMap())
    end
    

    def jnew_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration_1_2(storeHashMap)
        jfields_org_allbinary_business_user_modules_admin_configuration_AdminConfiguration
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.getFormData(storeHashMap)
    end
    

    # throws Exception
    def getFormData(storeHashMap)
        @logUtil.putF(@commonStrings.START, self, "getFormData")
        self.setContextConfigurationInterface(::Org::Allbinary::Business::Context::Configuration::ContextConfiguration.new(storeHashMap))
    end
    java_overload :getFormData, 1
    

    # throws Exception
    def write()
        java_monitor.synchronize do
        contextConfigurationDomDocumentMapping = ::Org::Allbinary::Business::Context::Configuration::ContextConfigurationDomDocumentMapping.new(self.getContextConfigurationInterface())
        cryptFileWriter = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileWriter.new(::Org::Allbinary::Business::Context::Configuration::ContextConfigurationData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Business::Context::Configuration::ContextConfigurationData.getInstance().ENCRYPTED_EXTENSION)
        cryptFileWriter.write(::Org::Allbinary::Business::Context::Configuration::ContextConfigurationPathUtil.getAbPath(AdminConfigurationData::CONTEXTNAME), contextConfigurationDomDocumentMapping.toXmlDoc())
        end
    end
    java_overload :write, 0
    

    def getContextConfigurationInterface()
        return @contextConfigurationInterface
    end
    java_overload :getContextConfigurationInterface, 0
    

    def setContextConfigurationInterface(contextConfigurationInterface)
        @contextConfigurationInterface = contextConfigurationInterface
    end
    java_overload :setContextConfigurationInterface, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfiguration, "org/allbinary/business/context/configuration/ContextConfiguration" unless const_defined?(:ContextConfiguration, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationData, "org/allbinary/business/context/configuration/ContextConfigurationData" unless const_defined?(:ContextConfigurationData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationDomDocumentMapping, "org/allbinary/business/context/configuration/ContextConfigurationDomDocumentMapping" unless const_defined?(:ContextConfigurationDomDocumentMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface" unless const_defined?(:ContextConfigurationInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationInterfaceFactory, "org/allbinary/business/context/configuration/ContextConfigurationInterfaceFactory" unless const_defined?(:ContextConfigurationInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationPathUtil, "org/allbinary/business/context/configuration/ContextConfigurationPathUtil" unless const_defined?(:ContextConfigurationPathUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileWriter, "org/allbinary/logic/control/crypt/file/CryptFileWriter" unless const_defined?(:CryptFileWriter, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AdminConfigurationData, "org/allbinary/business/user/modules/admin/configuration/AdminConfigurationData" unless const_defined?(:AdminConfigurationData, false)

end; end; end; end; end; end; end

