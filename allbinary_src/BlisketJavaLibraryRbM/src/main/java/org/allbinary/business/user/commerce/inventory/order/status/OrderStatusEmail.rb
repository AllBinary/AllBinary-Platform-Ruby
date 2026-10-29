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
# package org.allbinary.business.user.commerce.inventory.order.status


class OrderStatusEmail
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :orderHistory, :storeFrontInterface, :user

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @abeClientInformation = nil
        @orderHistory = nil
        @storeFrontInterface = nil
        @user = nil
    end
    

    def initialize(abeClientInformation, orderHistory)
        initialize_fields
        @abeClientInformation = abeClientInformation
        @orderHistory = orderHistory
        storeName = orderHistory.getStoreName()
        @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        @user = UserEntityFactory.getInstance().getUser(orderHistory.getUserName())
    end
    

    # throws Exception
    def process()
        self.notifyStoreAdmin()
        self.notifyUser()
    end
    

    # throws Exception
    def notifyStoreAdmin()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Order Email", self, "emailStoreAdmin")
            end
            adminEmailSubject = "Order " + (@orderHistory.getStatus()).to_s + " Attempt"
            adminEmailTextBody = "Order attempt: " + (@orderHistory.getId()).to_s + " Preprocessing by: " + (@user.getUserName()).to_s
            adminBasicEmailInfo = AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
            storeAdminBasicEmailInfo = StoreEmailInfo.new(@storeFrontInterface, adminEmailSubject, adminEmailTextBody)
            storeAdminEmailInfo = EmailInfo.new(storeAdminBasicEmailInfo)
            adminEmailInfo = EmailInfo.new(adminBasicEmailInfo)
            userEmailEventNameData = UserEmailEventNameData.getInstance(@orderHistory.getStatus())
            adminUserEmailEventHandler = AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, userEmailEventNameData)
            storeAdminUserEmailEventHandler = StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(userEmailEventNameData, @abeClientInformation, @storeFrontInterface)
            storeAdminUserEmailEventHandler.receiveEmailInfo(userEmailEventNameData, storeAdminEmailInfo)
            adminUserEmailEventHandler.receiveEmailInfo(userEmailEventNameData, adminEmailInfo)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "emailAdmin", e)
            end
        end
    end
    

    # throws Exception
    def notifyUser()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Email User", self, "notifyUser()")
            end
            subject = "Order " + (@orderHistory.getStatus()).to_s + " Attempt"
            textBody = "Order attempt: " + (@orderHistory.getId()).to_s + " Preprocessing by: " + (@user.getUserName()).to_s
            basicEmailInfo = StoreEmailInfo.new(@storeFrontInterface, subject, textBody)
            emailInfo = EmailInfo.new(basicEmailInfo)
            userEmailEventNameData = UserEmailEventNameData.getInstance(@orderHistory.getStatus())
            userEmailEventHandler = UserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, userEmailEventNameData, @user)
            userEmailEventHandler.receiveEmailInfo(userEmailEventNameData, emailInfo)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "notifyUser", e)
            end
            raise e
        end
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
require "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/info/AdminEmailInfo"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
require "org/allbinary/logic/communication/smtp/info/EmailInfo"
require "org/allbinary/logic/communication/smtp/info/StoreEmailInfo"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"

