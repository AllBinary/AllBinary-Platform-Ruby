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
# package org.allbinary.data.tables.user.commerce.inventory.item.permissions


module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; module Permissions

class PermissionItemsEntityFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_data_tables_user_commerce_inventory_item_permissions_PermissionItemsEntityFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_data_tables_user_commerce_inventory_item_permissions_PermissionItemsEntityFactory
    end
    

    def self.getPermissionItemsEntityInstance()
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            return PermissionItemsEntity.new()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                logUtil.put(commonStrings.EXCEPTION, "PermissionItemsEntityFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end

    def self.instance()
        PermissionItemsEntityFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PermissionItemsEntityFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PermissionItemsEntityFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PermissionItemsEntityFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :PermissionItemsEntity, "org/allbinary/data/tables/user/commerce/inventory/item/permissions/PermissionItemsEntity" unless const_defined?(:PermissionItemsEntity, false)

begin
    PermissionItemsEntityFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

