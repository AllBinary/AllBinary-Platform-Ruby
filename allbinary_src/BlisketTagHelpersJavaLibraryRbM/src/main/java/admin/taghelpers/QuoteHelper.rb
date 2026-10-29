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

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/BasicTable"

class QuoteHelper < BasicTable
    attr_accessor :logUtil, :abeClientInformation, :weblisketSession, :storeFrontInterface, :portion

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @weblisketSession = nil
        @storeFrontInterface = nil
        @portion = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        storeName = hashMap.get(StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        else
            @storeFrontInterface = StoreFront.new()
        end
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
        @portion = Portion.new(hashMap)
    end
    

    # throws Exception
    def emailUser(quoteRequest)
        user = UserEntityFactory.getInstance().getUser(quoteRequest.getUserName())
        userEmailSubject = "Quote Request Receipt"
        stringBuffer = StringMaker.new()
        stringBuffer.append("This is just a verification email. ")
        stringBuffer.append("We usually respond to quote request within 24 hours.")
        stringBuffer.append("\n\nThank You For Your Business.")
        userEmailTextBody = stringBuffer.to_s
        basicEmailInfo = StoreEmailInfo.new(@storeFrontInterface, userEmailSubject, userEmailTextBody)
        emailInfo = EmailInfo.new(basicEmailInfo)
        userEmailEventHandler = UserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, UserEmailEventNameData::QUOTEREQUEST, user)
        userEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::QUOTEREQUEST, emailInfo)
    end
    

    # throws Exception
    def emailAdmins(quoteRequest)
        adminEmailSubject = "Quote Request"
        stringBuffer = StringMaker.new()
        stringBuffer.append("\nUserName: ")
        stringBuffer.append(quoteRequest.getUserName())
        stringBuffer.append("\nProject Info: \n")
        stringBuffer.append(quoteRequest.getProjectInfo())
        stringBuffer.append("\nUser Comments: \n")
        stringBuffer.append(quoteRequest.getUserComments())
        stringBuffer.append("\nBudget: \n")
        stringBuffer.append(quoteRequest.getBudget())
        stringBuffer.append("\nTime Frame: \n")
        stringBuffer.append(quoteRequest.getTimeFrame())
        stringBuffer.append("\nComments: \n")
        stringBuffer.append(quoteRequest.getComments())
        adminEmailTextBody = stringBuffer.to_s
        basicEmailInfo = StoreEmailInfo.new(@storeFrontInterface, adminEmailSubject, adminEmailTextBody)
        emailInfo = EmailInfo.new(basicEmailInfo)
        storeAdminUserEmailEventHandler = AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, UserEmailEventNameData::QUOTEREQUEST)
        adminUserEmailEventHandler = StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(UserEmailEventNameData::QUOTEREQUEST, @abeClientInformation, @storeFrontInterface)
        storeAdminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::QUOTEREQUEST, emailInfo)
        adminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::QUOTEREQUEST, emailInfo)
    end
    

    # throws Exception
    def email()
        begin
            quoteRequestEntity = QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance()
            userName = @weblisketSession.getUserName()
            vector = quoteRequestEntity.getIds(userName)
            id = 0
            size = vector.size()
            (0...size).each do |index|
                nextId = (vector.get(index)).to_i
                if id < nextId
                    id = nextId
                end
            end
            quoteRequest = quoteRequestEntity.get(userName, id)
            if quoteRequest != nil
                self.emailUser(quoteRequest)
                self.emailAdmins(quoteRequest)
                return "Thank You For Your Business.<p/>"
            else
                raise StandardError.new("No Quote Request")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "email", e)
            end
            return "Thank You For Your Business.<p>"
        end
    end
    

    def drop()
        begin
            success = QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().dropTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop QuoteRequest table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    

    def create()
        begin
            success = QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().createTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create new QuoteRequest table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    

    def restore()
        begin
            success = "Restore Successful"
            result = AbSqlTableUtil.getInstance().restoreTable(QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance(), @portion)
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
            result = AbSqlTableUtil.getInstance().backupTable(QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance())
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
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFront"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/installer/Portion"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/business/user/quoterequest/QuoteRequest"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntity"
require "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
require "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
require "org/allbinary/logic/communication/smtp/info/EmailInfo"
require "org/allbinary/logic/communication/smtp/info/StoreEmailInfo"
require "org/allbinary/logic/communication/sql/AbSqlTableUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

