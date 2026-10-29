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

class PaymentHelper < Table
    attr_accessor :logUtil, :weblisketSession, :request, :value, :portion

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @request = nil
        @value = nil
        @portion = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @request = pageContext.getRequest()
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
        @portion = Portion.new(hashMap)
        self.getFormData()
    end
    

    def getFormData()
        @value = @request.getParameter("VALUE")
    end
    

    def insert()
        begin
            success = "Successfully Added Payment"
            paymentEntity = PaymentEntityFactory.getInstance().getPaymentEntityInstance()
            paymentInterface = PaymentFactory.getInstance(@request)
            paymentEntity.add(@weblisketSession.getUserName(), paymentInterface)
            paymentEntity.setDefault(@weblisketSession.getUserName(), paymentEntity.getLastId(@weblisketSession.getUserName()))
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "addPayment()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add Payment"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "addPayment()", e)
            end
            return error
        end
    end
    

    def select()
        begin
            success = "Successfully Selected Payment"
            paymentEntity = PaymentEntityFactory.getInstance().getPaymentEntityInstance()
            paymentEntity.setDefault(@weblisketSession.getUserName(), @value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "selectPayment()")
            end
            return success
        rescue StandardError => e
            error = "Failed to select Payment"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "selectPayment()", e)
            end
            return error
        end
    end
    

    def delete()
        begin
            success = "Successfully Removed Payment"
            paymentEntity = PaymentEntityFactory.getInstance().getPaymentEntityInstance()
            paymentEntity.remove(@weblisketSession.getUserName(), @value)
            paymentInterface = paymentEntity.getDefault(@weblisketSession.getUserName())
            if paymentInterface == nil
                paymentEntity.setDefault(@weblisketSession.getUserName(), paymentEntity.getLastId(@weblisketSession.getUserName()))
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "removePayment()")
            end
            return success
        rescue StandardError => e
            error = "Failed to remove Payment"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "removePayment()", e)
            end
            return error
        end
    end
    

    def drop()
        begin
            paymentEntity = PaymentEntityFactory.getInstance().getPaymentEntityInstance()
            success = paymentEntity.dropTable()
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
            paymentEntity = PaymentEntityFactory.getInstance().getPaymentEntityInstance()
            success = paymentEntity.createTable()
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
            result = AbSqlTableUtil.getInstance().restoreTable(PaymentEntityFactory.getInstance().getPaymentEntityInstance(), @portion)
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
            result = AbSqlTableUtil.getInstance().backupTable(PaymentEntityFactory.getInstance().getPaymentEntityInstance())
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
    

    # throws LicensingException
    def update()
        return @commonStrings.NOT_IMPLEMENTED
    end
end

require "java/util/HashMap"
require "org/allbinary/business/installer/Portion"
require "org/allbinary/business/user/commerce/money/payment/PaymentFactory"
require "org/allbinary/business/user/commerce/money/payment/PaymentInterface"
require "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntity"
require "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlTableUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

