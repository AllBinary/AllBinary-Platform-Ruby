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

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/Table"

class BillingAddressHelper < Table
    attr_accessor :logUtil, :stringUtil, :weblisketSession, :request, :userName, :streetAddress, :portion

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stringUtil = StringUtil.getInstance()
        @weblisketSession = nil
        @request = nil
        @userName = nil
        @streetAddress = nil
        @portion = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @request = pageContext.getRequest()
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
        @portion = Portion.new(hashMap)
        self.getAddressForm()
    end
    

    def getAddressForm()
        @userName = @request.getParameter(UserData::USERNAME)
        if @userName == nil
            @userName = @request.getParameter(WeblisketSessionData::REMOVABLEUSERNAME)
        end
        @streetAddress = StreetAddress.new(@request)
    end
    

    def drop()
        begin
            success = BillingAddressesEntity.new(@stringUtil.EMPTY_STRING).drop()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop Admin table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    

    def create()
        begin
            success = BillingAddressesEntity.new(@stringUtil.EMPTY_STRING).createTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create user table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    

    def restore()
        begin
            success = "Restore Successful"
            billingAddressesEntity = BillingAddressesEntity.new(StringUtil.getInstance().EMPTY_STRING)
            result = AbSqlTableUtil.getInstance().restoreTable(billingAddressesEntity, @portion)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "restore()")
            end
            return result
        rescue StandardError => e
            error = "Failed to restore backup"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "restore()", e)
            end
            return error
        end
    end
    

    def backup()
        begin
            success = "Backup Successful"
            result = AbSqlTableUtil.getInstance().backupTable(BillingAddressesEntity.new(StringUtil.getInstance().EMPTY_STRING))
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "backup()")
            end
            return result
        rescue StandardError => e
            error = "Failed to make backup"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
            end
            return error
        end
    end
    

    def insert()
        begin
            success = "Successfully Added Billing Address"
            BillingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).add(@streetAddress)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "add()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add Billing Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "add()", e)
            end
            return error
        end
    end
    

    def update()
        begin
            success = "Successfully Updated Billing Address"
            BillingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).update(@streetAddress)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfull update of a user Billing Address table", self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed update of a User Billing Address Table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    

    def setToShippingAddress()
        begin
            shippingAddressesEntityFactory = ShippingAddressesEntityFactory.getInstance()
            streetAddress = shippingAddressesEntityFactory.getInstance(@weblisketSession.getUserName()).getDefault()
            if streetAddress != nil
                shippingAddressesEntityFactory.getInstance(@weblisketSession.getUserName()).add(streetAddress)
            else
                return "No Shipping Address"
            end
            return StringUtil.getInstance().EMPTY_STRING
        rescue StandardError => e
            error = "Failed to Set Billing address to Shipping Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setToShippingAddress()", e)
            end
            return error
        end
    end
    

    def delete()
        begin
            success = "Successfully Removed Billing Address"
            BillingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).remove(@streetAddress.getId())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to remove Billing Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    

    def set()
        begin
            success = "Successfully Set Billing Address"
            BillingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).setDefault(@streetAddress.getId())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "set()")
            end
            return success
        rescue StandardError => e
            error = "Failed to set billing Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "set()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/installer/Portion"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/data/tables/user/address/billing/BillingAddressesEntity"
require "org/allbinary/data/tables/user/address/billing/BillingAddressesEntityFactory"
require "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlTableUtil"
require "org/allbinary/logic/string/StringUtil"

