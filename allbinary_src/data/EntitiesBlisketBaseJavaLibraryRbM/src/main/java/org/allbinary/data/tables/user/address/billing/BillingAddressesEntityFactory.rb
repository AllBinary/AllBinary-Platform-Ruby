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
# package org.allbinary.data.tables.user.address.billing


module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Billing

class BillingAddressesEntityFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_data_tables_user_address_billing_BillingAddressesEntityFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_data_tables_user_address_billing_BillingAddressesEntityFactory
    end
    

    def getInstance(userName)
        begin
            return BillingAddressesEntity.new(userName)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end

    def self.instance()
        BillingAddressesEntityFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BillingAddressesEntityFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BillingAddressesEntityFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BillingAddressesEntityFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; autoload :StreetAddressesEntity, "org/allbinary/data/tables/user/address/StreetAddressesEntity" unless const_defined?(:StreetAddressesEntity, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BillingAddressesEntity, "org/allbinary/data/tables/user/address/billing/BillingAddressesEntity" unless const_defined?(:BillingAddressesEntity, false)

begin
    BillingAddressesEntityFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

