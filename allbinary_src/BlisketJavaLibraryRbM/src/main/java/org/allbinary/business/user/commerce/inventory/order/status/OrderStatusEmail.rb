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

autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
autoload :StoreAdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons"
autoload :UserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons"
autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo"
autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo"
autoload :StoreEmailInfo, "org/allbinary/logic/communication/smtp/info/StoreEmailInfo"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

