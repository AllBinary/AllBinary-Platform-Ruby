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
# package org.allbinary.logic.communication.smtp.info

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info

class AdminEmailInfo < BasicEmailInfo
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_smtp_info_AdminEmailInfo
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(subject, textBody)
        super(subject, textBody)
        jfields_org_allbinary_logic_communication_smtp_info_AdminEmailInfo
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        self.init()
    end
    

    # throws Exception
    def init()
        adminConfigurationInterface = ::Org::Allbinary::Business::User::Modules::Admin::Configuration::AdminConfiguration.new()
        contextConfigurationInterface = adminConfigurationInterface.getContextConfigurationInterface()
        emailServerConfigurationInterface = contextConfigurationInterface.getEmailServerConfigurationInterface()
        self.setEmailServerConfigurationInterface(emailServerConfigurationInterface)
    end
    java_overload :init, 0
end

module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface" unless const_defined?(:ContextConfigurationInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Configuration; autoload :AdminConfiguration, "org/allbinary/business/user/modules/admin/configuration/AdminConfiguration" unless const_defined?(:AdminConfiguration, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Configuration; autoload :AdminConfigurationInterface, "org/allbinary/business/user/modules/admin/configuration/AdminConfigurationInterface" unless const_defined?(:AdminConfigurationInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server; autoload :EmailServerConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface" unless const_defined?(:EmailServerConfigurationInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

