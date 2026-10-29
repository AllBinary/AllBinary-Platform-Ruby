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

require "org/allbinary/logic/communication/sql/AbDatabaseManagement"

#Warning you must have sql root access
class InitDbCrypted < AbDatabaseManagement
    attr_accessor :logUtil, :userDbInitInfo, :inventoryDbInitInfo, :historyDbInitInfo, :staticpagesDbInitInfo, :logDbInitInfo, :SQL_FILE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userDbInitInfo = nil
        @inventoryDbInitInfo = nil
        @historyDbInitInfo = nil
        @staticpagesDbInitInfo = nil
        @logDbInitInfo = nil
        @SQL_FILE = "initWeblisket.sql"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        initialize_fields
    end
    

    def addUsers()
        begin
            @logUtil.putF(@commonStrings.START, self, @METHOD_ADD_USERS)
            @userDbInitInfo = UserDbInitInfo.new()
            @inventoryDbInitInfo = InventoryDbInitInfo.new()
            @historyDbInitInfo = HistoryDbInitInfo.new()
            @staticpagesDbInitInfo = StaticPagesDbInitInfo.new()
            @logDbInitInfo = LogDbInitInfo.new()
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
    

    def addDatabases()
        begin
            @logUtil.putF(@commonStrings.START, self, @METHOD_ADD_DATABASES)
            @userDbInitInfo = UserDbInitInfo.new()
            @inventoryDbInitInfo = InventoryDbInitInfo.new()
            @historyDbInitInfo = HistoryDbInitInfo.new()
            @staticpagesDbInitInfo = StaticPagesDbInitInfo.new()
            @logDbInitInfo = LogDbInitInfo.new()
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
            file = FileFactory.getInstance().getInstance(@SQL_FILE)
            file.createNewFile()
            idOutData = DataOutputStreamFactory.getInstance().getInstanceForAbFile(file)
            idOutData.writeBytes(@sqlCommandLog.to_s)
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_ADD_DATABASES, e)
            return true
        end
    end
    

    def addTables()
        begin
            stringBuffer = StringMaker.new()
            @logUtil.putF(@commonStrings.START, self, @METHOD_ADD_TABLES)
            stringBuffer.append(UserEntityFactory.getInstance().createTable())
            stringBuffer.append(StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().createTable())
            stringBuffer.append(BillingAddressesEntityFactory.getInstance().getInstance(@stringUtil.EMPTY_STRING).createTable())
            stringBuffer.append(ShippingAddressesEntityFactory.getInstance().getInstance(@stringUtil.EMPTY_STRING).createTable())
            stringBuffer.append(PaymentEntityFactory.getInstance().getPaymentEntityInstance().createTable())
            stringBuffer.append(QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().createTable())
            stringBuffer.append(OrderHistoryEntityFactory.getInstance().createTable())
            stringBuffer.append(OrderItemsEntityFactory.getInstance().createTable())
            stringBuffer.append(TransactionEntityFactory.getInstance().getTransactionEntityInstance().createTable())
            stringBuffer.append(TransactionResultEntityFactory.getInstance().getTransactionResultEntityInstance().createTable())
            stringBuffer.append(PaymentGatewayEntityFactory.getInstance().createTable())
            stringBuffer.append(InventoryEntityFactory.getInstance().getInventoryEntityInstance().createTable())
            stringBuffer.append(InitInfoEntity.new().createTable())
            stringBuffer.append(LogTableEntityFactory.getInstance().getLogTableEntityInstance().createTable())
            stringBuffer.append(StaticPagesEntityFactory.getInstance().getStaticPagesEntityInstance().createTable())
            stringBuffer.append(TransformInfoEntityBuilder.getInstance().createTable())
            @logUtil.putF((ADD_TABLES_RESULTS_LABEL).to_s + stringBuffer.to_s, self, @METHOD_ADD_TABLES)
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_ADD_TABLES, e)
            return false
        end
    end
end

require "org/allbinary/business/init/InitInfoEntity"
require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"
require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/business/init/db/HistoryDbInitInfo"
require "org/allbinary/business/init/db/InventoryDbInitInfo"
require "org/allbinary/business/init/db/LogDbInitInfo"
require "org/allbinary/business/init/db/StaticPagesDbInitInfo"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory"
require "org/allbinary/data/tables/log/LogTableEntityFactory"
require "org/allbinary/data/tables/staticpages/StaticPagesEntityFactory"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/data/tables/user/address/billing/BillingAddressesEntityFactory"
require "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityFactory"
require "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityFactory"
require "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory"
require "org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionEntityFactory"
require "org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionResultEntityFactory"
require "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/logic/string/StringMaker"

