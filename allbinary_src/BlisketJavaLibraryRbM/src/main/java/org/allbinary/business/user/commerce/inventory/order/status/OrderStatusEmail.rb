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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; module Status

class OrderStatusEmail
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :orderHistory, :storeFrontInterface, :user

    def jfields_org_allbinary_business_user_commerce_inventory_order_status_OrderStatusEmail
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @orderHistory = nil unless instance_variable_defined?(:@orderHistory)
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @user = nil unless instance_variable_defined?(:@user)
    end
    

    def initialize(abeClientInformation, orderHistory)
        jfields_org_allbinary_business_user_commerce_inventory_order_status_OrderStatusEmail
        @abeClientInformation = abeClientInformation
        @orderHistory = orderHistory
        storeName = orderHistory.getStoreName()
        @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
        @user = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().getUser(orderHistory.getUserName())
    end
    

    # throws Exception
    def process()
        self.notifyStoreAdmin()
        self.notifyUser()
    end
    

    # throws Exception
    def notifyStoreAdmin()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Order Email", self, "emailStoreAdmin")
            end
            adminEmailSubject = "Order " + (@orderHistory.getStatus()).to_s + " Attempt"
            adminEmailTextBody = "Order attempt: " + (@orderHistory.getId()).to_s + " Preprocessing by: " + (@user.getUserName()).to_s
            adminBasicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
            storeAdminBasicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::StoreEmailInfo.new(@storeFrontInterface, adminEmailSubject, adminEmailTextBody)
            storeAdminEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(storeAdminBasicEmailInfo)
            adminEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(adminBasicEmailInfo)
            userEmailEventNameData = ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData.getInstance(@orderHistory.getStatus())
            adminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, userEmailEventNameData)
            storeAdminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(userEmailEventNameData, @abeClientInformation, @storeFrontInterface)
            storeAdminUserEmailEventHandler.receiveEmailInfo(userEmailEventNameData, storeAdminEmailInfo)
            adminUserEmailEventHandler.receiveEmailInfo(userEmailEventNameData, adminEmailInfo)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "emailAdmin", e)
            end
        end
    end
    

    # throws Exception
    def notifyUser()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Email User", self, "notifyUser()")
            end
            subject = "Order " + (@orderHistory.getStatus()).to_s + " Attempt"
            textBody = "Order attempt: " + (@orderHistory.getId()).to_s + " Preprocessing by: " + (@user.getUserName()).to_s
            basicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::StoreEmailInfo.new(@storeFrontInterface, subject, textBody)
            emailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(basicEmailInfo)
            userEmailEventNameData = ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData.getInstance(@orderHistory.getStatus())
            userEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::UserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, userEmailEventNameData, @user)
            userEmailEventHandler.receiveEmailInfo(userEmailEventNameData, emailInfo)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "notifyUser", e)
            end
            raise e
        end
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler" unless const_defined?(:UserEmailEventHandler, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons" unless const_defined?(:AdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :StoreAdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons" unless const_defined?(:StoreAdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :UserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons" unless const_defined?(:UserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo" unless const_defined?(:AdminEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :StoreEmailInfo, "org/allbinary/logic/communication/smtp/info/StoreEmailInfo" unless const_defined?(:StoreEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

