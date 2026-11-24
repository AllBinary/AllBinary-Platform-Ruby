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

require "java/lang/JavaOverload"
require "org/allbinary/business/context/configuration/ContextConfigurationInterface"

module ::Org; module Allbinary; module Business; module Context; module Configuration

class ContextConfiguration
    include ContextConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :emailServerConfigurationInterface

    def jfields_org_allbinary_business_context_configuration_ContextConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @emailServerConfigurationInterface = nil unless instance_variable_defined?(:@emailServerConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_context_configuration_ContextConfiguration_0(*args)
        when 1 then jnew_org_allbinary_business_context_configuration_ContextConfiguration_1(*args)
        else raise ArgumentError, "No constructor of ContextConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_context_configuration_ContextConfiguration_0()
        jfields_org_allbinary_business_context_configuration_ContextConfiguration
        @logUtil.putF(@commonStrings.START, self, "ContextConfiguration")
        self.setEmailServerConfigurationInterface(::Org::Allbinary::Logic::Communication::Smtp::Configuration::Server::EmailServerConfiguration.new())
    end
    

    def jnew_org_allbinary_business_context_configuration_ContextConfiguration_1(hashMap)
        jfields_org_allbinary_business_context_configuration_ContextConfiguration
        @logUtil.putF(@commonStrings.START, self, "ContextConfiguration(HashMap)")
        self.setEmailServerConfigurationInterface(::Org::Allbinary::Logic::Communication::Smtp::Configuration::Server::EmailServerConfiguration.new(hashMap))
    end
    

    def getEmailServerConfigurationInterface()
        return @emailServerConfigurationInterface
    end
    java_overload :getEmailServerConfigurationInterface, 0
    

    def setEmailServerConfigurationInterface(emailServerConfigurationInterface)
        @emailServerConfigurationInterface = emailServerConfigurationInterface
    end
    java_overload :setEmailServerConfigurationInterface, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server; autoload :EmailServerConfiguration, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfiguration" unless const_defined?(:EmailServerConfiguration, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server; autoload :EmailServerConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface" unless const_defined?(:EmailServerConfigurationInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

