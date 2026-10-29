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

require "java/lang/Object"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

class StoreFrontsRequestHelper < ModifyTable
    attr_accessor :logUtil, :abeClientInformation, :pageContext, :request, :weblisketSession, :storeName, :modifyingStoreFrontInterface, :portion

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @pageContext = nil
        @request = nil
        @weblisketSession = nil
        @storeName = nil
        @modifyingStoreFrontInterface = nil
        @portion = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @pageContext = pageContext
        @request = pageContext.getRequest()
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
        @portion = Portion.new(hashMap)
        self.getFormData()
    end
    

    # throws Exception
    def getFormData()
        @storeName = @weblisketSession.getStoreName()
        @modifyingStoreFrontInterface = StoreFront.new(@request)
    end
    

    def update()
        begin
            success = "Updated Successfully"
            hashMapData = @modifyingStoreFrontInterface.toHashMap()
            StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().update(hashMapData)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update storefronts table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    

    # throws Exception
    def sendStoreCreatedEmails()
        storeManagerEmailSubject = "Store Manager Nofification For Store: " + @modifyingStoreFrontInterface.getName()
        adminEmailSubject = "Admin Notification For Store: " + @modifyingStoreFrontInterface.getName()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Store Created: ")
        stringBuffer.append(@modifyingStoreFrontInterface.getName())
        stringBuffer.append("\n\n")
        stringBuffer.append("Click here for the Admin Interface:\n")
        stringBuffer.append(@modifyingStoreFrontInterface.getCurrentHomeHostName())
        stringBuffer.append("/admin/login.jsp\n\n")
        stringBuffer.append("Goto Your Store:\n")
        stringBuffer.append(@modifyingStoreFrontInterface.getCurrentHomeHostName())
        stringBuffer.append(@modifyingStoreFrontInterface.getName())
        stringBuffer.append("/index.jsp")
        stringBuffer.append("\n\n")
        stringBuffer.append("UserName: ")
        stringBuffer.append(@weblisketSession.getUserName())
        adminEmailTextBody = stringBuffer.to_s
        adminBasicEmailInfo = AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
        storeAdminBasicEmailInfo = StoreEmailInfo.new(@modifyingStoreFrontInterface, storeManagerEmailSubject, adminEmailTextBody)
        storeAdminEmailInfo = EmailInfo.new(storeAdminBasicEmailInfo)
        adminEmailInfo = EmailInfo.new(adminBasicEmailInfo)
        adminUserEmailEventHandler = AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, UserEmailEventNameData::STORECREATED)
        storeAdminUserEmailEventHandler = StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(UserEmailEventNameData::STORECREATED, @abeClientInformation, @modifyingStoreFrontInterface)
        storeAdminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::STORECREATED, storeAdminEmailInfo)
        adminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::STORECREATED, adminEmailInfo)
    end
    

    def install()
        java_monitor.synchronize do
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append("Intall StoreFront Successfully: ")
            stringBuffer.appendint((@portion.getCurrent().to_i).to_i)
            stringBuffer.append(" of ")
            stringBuffer.appendint((@portion.getTotal().to_i).to_i)
            success = stringBuffer.to_s
            @modifyingStoreFrontInterface.install(@portion.getCurrent().to_i, @portion.getTotal().to_i)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "install()")
            end
            return success
        rescue StandardError => e
            error = "Failed to Install storefront"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "install()", e)
            end
            return error
        end
        end
    end
    

    def insert()
        java_monitor.synchronize do
        begin
            success = "Added Successfully"
            values = @modifyingStoreFrontInterface.toVector()
            StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().insert(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add storefront"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
        end
    end
    

    def delete()
        begin
            success = "Delete Successfully"
            StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().delete(@storeName)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to delete storefronts table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFront"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/installer/Portion"
require "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
require "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/info/AdminEmailInfo"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
require "org/allbinary/logic/communication/smtp/info/EmailInfo"
require "org/allbinary/logic/communication/smtp/info/StoreEmailInfo"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

