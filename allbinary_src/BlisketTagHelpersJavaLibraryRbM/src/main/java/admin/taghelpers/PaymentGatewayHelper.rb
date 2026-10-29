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
require "admin/taghelpers/BasicTable"

class PaymentGatewayHelper < BasicTable
    attr_accessor :logUtil, :weblisketSession, :httpServletRequest, :portion

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @httpServletRequest = nil
        @portion = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        begin
            @weblisketSession = WeblisketSession.new(hashMap, pageContext)
            @httpServletRequest = pageContext.getRequest()
            @portion = Portion.new(hashMap)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENTERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def insert()
        begin
            paymentGatewayInterface = PaymentGatewayInterfaceFactory.new().getInstance(@httpServletRequest)
            paymentGatewayInterface.setStoreName(@weblisketSession.getStoreName())
            PaymentGatewayEntityFactory.getInstance().add(paymentGatewayInterface)
            success = "Successfully Added New Payment Gateway"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success + "<br/>"
        rescue StandardError => e
            error = "Failed to add"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "add()", e)
            end
            return error + "<br>" + "Exception: " + (e).to_s + "<br>"
        end
    end
    

    def update()
        begin
            paymentGatewayInterface = PaymentGatewayInterfaceFactory.new().getInstance(@httpServletRequest)
            paymentGatewayInterface.setStoreName(@weblisketSession.getStoreName())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Gateway Name: ")
                stringBuffer.append(paymentGatewayInterface.getName())
                stringBuffer.append(" HashMap=")
                stringBuffer.append(paymentGatewayInterface.toHashMap(true).to_s)
                @logUtil.putF(stringBuffer.to_s, self, "update()")
            end
            PaymentGatewayEntityFactory.getInstance().update(paymentGatewayInterface)
            success = "Successfully Updated Payment Gateway information"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success + "<br/>"
        rescue StandardError => e
            error = "Failed to update payment gateway information"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error + "<br/>" + "Exception: " + (e).to_s + "<br/>"
        end
    end
    

    def delete()
        begin
            paymentGatewayInterface = PaymentGatewayInterfaceFactory.new().getInstance(@httpServletRequest)
            paymentGatewayInterface.setStoreName(@weblisketSession.getStoreName())
            storeName = paymentGatewayInterface.getStoreName()
            gatewayName = paymentGatewayInterface.getName()
            PaymentGatewayEntityFactory.getInstance().remove(storeName, BasicPaymentTypeUtil.getInstance().get(gatewayName))
            stringBuffer = StringMaker.new()
            stringBuffer.append("Successfully Removed payment gateway where store name=")
            stringBuffer.append(storeName)
            stringBuffer.append(" and gateway name=")
            stringBuffer.append(gatewayName)
            success = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success + "<br/>"
        rescue StandardError => e
            error = "Failed to remove payment gateway from table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "remove()", e)
            end
            return error + "<br/>" + "Exception: " + (e).to_s + "<br>"
        end
    end
    

    def drop()
        begin
            success = PaymentGatewayEntityFactory.getInstance().dropTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop payment transaction result table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    

    def create()
        begin
            success = PaymentGatewayEntityFactory.getInstance().createTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create payment transaction result table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    

    def restore()
        begin
            success = "Restore Successful"
            result = AbSqlTableUtil.getInstance().restoreTable(PaymentGatewayEntityFactory.getInstance(), @portion)
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
            success = "Restore Successful"
            result = AbSqlTableUtil.getInstance().backupTable(PaymentGatewayEntityFactory.getInstance())
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
end

require "java/util/HashMap"
require "org/allbinary/business/installer/Portion"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactory"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil"
require "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlTableUtil"
require "org/allbinary/logic/string/StringMaker"

