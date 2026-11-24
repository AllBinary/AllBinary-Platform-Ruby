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
# package org.allbinary.business.installer

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/communication/sql/AbDatabaseManagement"

module ::Org; module Allbinary; module Business; module Installer

#Warning you must have sql root access
class InitDbCrypted < ::Org::Allbinary::Logic::Communication::Sql::AbDatabaseManagement
    attr_accessor :logUtil, :userDbInitInfo, :inventoryDbInitInfo, :historyDbInitInfo, :staticpagesDbInitInfo, :logDbInitInfo, :SQL_FILE

    def jfields_org_allbinary_business_installer_InitDbCrypted
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @userDbInitInfo = nil unless instance_variable_defined?(:@userDbInitInfo)
        @inventoryDbInitInfo = nil unless instance_variable_defined?(:@inventoryDbInitInfo)
        @historyDbInitInfo = nil unless instance_variable_defined?(:@historyDbInitInfo)
        @staticpagesDbInitInfo = nil unless instance_variable_defined?(:@staticpagesDbInitInfo)
        @logDbInitInfo = nil unless instance_variable_defined?(:@logDbInitInfo)
        @SQL_FILE = "initWeblisket.sql"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        jfields_org_allbinary_business_installer_InitDbCrypted
    end
    

    def addUsers()
        begin
            @logUtil.putF(@commonStrings.START, self, @METHOD_ADD_USERS)
            @userDbInitInfo = ::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new()
            @inventoryDbInitInfo = ::Org::Allbinary::Business::Init::Db::InventoryDbInitInfo.new()
            @historyDbInitInfo = ::Org::Allbinary::Business::Init::Db::HistoryDbInitInfo.new()
            @staticpagesDbInitInfo = ::Org::Allbinary::Business::Init::Db::StaticPagesDbInitInfo.new()
            @logDbInitInfo = ::Org::Allbinary::Business::Init::Db::LogDbInitInfo.new()
            _CUSTOMERDB = @userDbInitInfo.getName()
            _CUSTOMERDBUSER = @userDbInitInfo.getUserName()
            _CUSTOMERDBPASSWORD = @userDbInitInfo.getPassword()
            if !self.addDbUser(_CUSTOMERDB, _CUSTOMERDBUSER, _CUSTOMERDBPASSWORD)
                @logUtil.putF((@UNABLE_TO_CREATE_USER).to_s + _CUSTOMERDBUSER, self, @METHOD_ADD_USERS)
                return false
            end
            _INVENTORYDB = @inventoryDbInitInfo.getName()
            _INVENTORYDBUSER = @inventoryDbInitInfo.getUserName()
            _INVENTORYDBPASSWORD = @inventoryDbInitInfo.getPassword()
            if !self.addDbUser(_INVENTORYDB, _INVENTORYDBUSER, _INVENTORYDBPASSWORD)
                @logUtil.putF((@UNABLE_TO_CREATE_USER).to_s + _INVENTORYDBUSER, self, @METHOD_ADD_USERS)
                return false
            end
            _HISTORYDB = @historyDbInitInfo.getName()
            _HISTORYDBUSER = @historyDbInitInfo.getUserName()
            _HISTORYDBPASSWORD = @historyDbInitInfo.getPassword()
            if !self.addDbUser(_HISTORYDB, _HISTORYDBUSER, _HISTORYDBPASSWORD)
                @logUtil.putF((@UNABLE_TO_CREATE_USER).to_s + _HISTORYDBUSER, self, @METHOD_ADD_USERS)
                return false
            end
            _STATICPAGESDB = @staticpagesDbInitInfo.getName()
            _STATICPAGESDBUSER = @staticpagesDbInitInfo.getUserName()
            _STATICPAGESDBPASSWORD = @staticpagesDbInitInfo.getPassword()
            if !self.addDbUser(_STATICPAGESDB, _STATICPAGESDBUSER, _STATICPAGESDBPASSWORD)
                @logUtil.putF((@UNABLE_TO_CREATE_USER).to_s + _STATICPAGESDBUSER, self, @METHOD_ADD_USERS)
                return false
            end
            _LOGDB = @logDbInitInfo.getName()
            _LOGDBUSER = @logDbInitInfo.getUserName()
            _LOGDBPASSWORD = @logDbInitInfo.getPassword()
            if !self.addDbUser(_LOGDB, _LOGDBUSER, _LOGDBPASSWORD)
                @logUtil.putF((@UNABLE_TO_CREATE_USER).to_s + _LOGDBUSER, self, @METHOD_ADD_USERS)
                return false
            end
            @logUtil.putF(@commonStrings.END_, self, @METHOD_ADD_USERS)
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_ADD_USERS, e)
            return true
        end
    end
    java_overload :addUsers, 0
    

    def addDatabases()
        begin
            @logUtil.putF(@commonStrings.START, self, @METHOD_ADD_DATABASES)
            @userDbInitInfo = ::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new()
            @inventoryDbInitInfo = ::Org::Allbinary::Business::Init::Db::InventoryDbInitInfo.new()
            @historyDbInitInfo = ::Org::Allbinary::Business::Init::Db::HistoryDbInitInfo.new()
            @staticpagesDbInitInfo = ::Org::Allbinary::Business::Init::Db::StaticPagesDbInitInfo.new()
            @logDbInitInfo = ::Org::Allbinary::Business::Init::Db::LogDbInitInfo.new()
            _CUSTOMERDB = @userDbInitInfo.getName()
            if !self.addDb(_CUSTOMERDB)
                @logUtil.putF((@UNABLE_TO_CREATE_DATABASE).to_s + _CUSTOMERDB, self, @METHOD_ADD_DATABASES)
                return false
            end
            _INVENTORYDB = @inventoryDbInitInfo.getName()
            if !self.addDb(_INVENTORYDB)
                @logUtil.putF((@UNABLE_TO_CREATE_DATABASE).to_s + _INVENTORYDB, self, @METHOD_ADD_DATABASES)
                return false
            end
            _HISTORYDB = @historyDbInitInfo.getName()
            if !self.addDb(_HISTORYDB)
                @logUtil.putF((@UNABLE_TO_CREATE_DATABASE).to_s + _HISTORYDB, self, @METHOD_ADD_DATABASES)
                return false
            end
            _STATICPAGESDB = @staticpagesDbInitInfo.getName()
            if !self.addDb(_STATICPAGESDB)
                @logUtil.putF((@UNABLE_TO_CREATE_DATABASE).to_s + _STATICPAGESDB, self, @METHOD_ADD_DATABASES)
                return false
            end
            _LOGDB = @logDbInitInfo.getName()
            if !self.addDb(_LOGDB)
                @logUtil.putF((@UNABLE_TO_CREATE_DATABASE).to_s + _LOGDB, self, @METHOD_ADD_DATABASES)
                return false
            end
            file = ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().getInstance(@SQL_FILE)
            file.createNewFile()
            idOutData = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(file)
            idOutData.writeBytes(@sqlCommandLog.to_s)
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_ADD_DATABASES, e)
            return true
        end
    end
    java_overload :addDatabases, 0
    

    def addTables()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            @logUtil.putF(@commonStrings.START, self, @METHOD_ADD_TABLES)
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Address::Billing::BillingAddressesEntityFactory.getInstance().getInstance(@stringUtil.EMPTY_STRING).createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntityFactory.getInstance().getInstance(@stringUtil.EMPTY_STRING).createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::PaymentEntityFactory.getInstance().getPaymentEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Quoterequest::QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderItemsEntityFactory.getInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Transaction::TransactionEntityFactory.getInstance().getTransactionEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Transaction::TransactionResultEntityFactory.getInstance().getTransactionResultEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::Business::Init::InitInfoEntity.new().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::Log::LogTableEntityFactory.getInstance().getLogTableEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::Staticpages::StaticPagesEntityFactory.getInstance().getStaticPagesEntityInstance().createTable())
            stringBuffer.append(::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance().createTable())
            @logUtil.putF((ADD_TABLES_RESULTS_LABEL).to_s + stringBuffer.to_s, self, @METHOD_ADD_TABLES)
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_ADD_TABLES, e)
            return false
        end
    end
    java_overload :addTables, 0
end

module ::Org; module Allbinary; module Business; module Init; autoload :InitInfoEntity, "org/allbinary/business/init/InitInfoEntity" unless const_defined?(:InitInfoEntity, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DatabaseConnectionInfoInterface, "org/allbinary/business/init/db/DatabaseConnectionInfoInterface" unless const_defined?(:DatabaseConnectionInfoInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :HistoryDbInitInfo, "org/allbinary/business/init/db/HistoryDbInitInfo" unless const_defined?(:HistoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :InventoryDbInitInfo, "org/allbinary/business/init/db/InventoryDbInitInfo" unless const_defined?(:InventoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :LogDbInitInfo, "org/allbinary/business/init/db/LogDbInitInfo" unless const_defined?(:LogDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :StaticPagesDbInitInfo, "org/allbinary/business/init/db/StaticPagesDbInitInfo" unless const_defined?(:StaticPagesDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Context; module ModulePackage; module Storefronts; autoload :StoreFrontsEntityFactory, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory" unless const_defined?(:StoreFrontsEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Log; autoload :LogTableEntityFactory, "org/allbinary/data/tables/log/LogTableEntityFactory" unless const_defined?(:LogTableEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Staticpages; autoload :StaticPagesEntityFactory, "org/allbinary/data/tables/staticpages/StaticPagesEntityFactory" unless const_defined?(:StaticPagesEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder" unless const_defined?(:TransformInfoEntityBuilder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Billing; autoload :BillingAddressesEntityFactory, "org/allbinary/data/tables/user/address/billing/BillingAddressesEntityFactory" unless const_defined?(:BillingAddressesEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Shipping; autoload :ShippingAddressesEntityFactory, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory" unless const_defined?(:ShippingAddressesEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory" unless const_defined?(:OrderHistoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityFactory" unless const_defined?(:OrderItemsEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; autoload :PaymentEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityFactory" unless const_defined?(:PaymentEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory" unless const_defined?(:PaymentGatewayEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Transaction; autoload :TransactionEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionEntityFactory" unless const_defined?(:TransactionEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Transaction; autoload :TransactionResultEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionResultEntityFactory" unless const_defined?(:TransactionResultEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Quoterequest; autoload :QuoteRequestEntityFactory, "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory" unless const_defined?(:QuoteRequestEntityFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory" unless const_defined?(:FileFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end

