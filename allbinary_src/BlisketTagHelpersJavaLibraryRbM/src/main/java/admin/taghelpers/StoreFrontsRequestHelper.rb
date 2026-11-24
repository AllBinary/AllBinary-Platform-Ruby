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
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

module ::Admin; module Taghelpers

class StoreFrontsRequestHelper < ModifyTable
    attr_accessor :logUtil, :abeClientInformation, :pageContext, :request, :weblisketSession, :storeName, :modifyingStoreFrontInterface, :portion

    def jfields_admin_taghelpers_StoreFrontsRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
        @request = nil unless instance_variable_defined?(:@request)
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @modifyingStoreFrontInterface = nil unless instance_variable_defined?(:@modifyingStoreFrontInterface)
        @portion = nil unless instance_variable_defined?(:@portion)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_StoreFrontsRequestHelper
        @pageContext = pageContext
        @request = pageContext.getRequest()
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
        @portion = ::Org::Allbinary::Business::Installer::Portion.new(hashMap)
        self.getFormData()
    end
    

    # throws Exception
    def getFormData()
        @storeName = @weblisketSession.getStoreName()
        @modifyingStoreFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFront.new(@request)
    end
    java_overload :getFormData, 0
    

    def update()
        begin
            success = "Updated Successfully"
            hashMapData = @modifyingStoreFrontInterface.toHashMap()
            ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().update(hashMapData)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update storefronts table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    java_overload :update, 0
    

    # throws Exception
    def sendStoreCreatedEmails()
        storeManagerEmailSubject = "Store Manager Nofification For Store: " + @modifyingStoreFrontInterface.getName()
        adminEmailSubject = "Admin Notification For Store: " + @modifyingStoreFrontInterface.getName()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        adminBasicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
        storeAdminBasicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::StoreEmailInfo.new(@modifyingStoreFrontInterface, storeManagerEmailSubject, adminEmailTextBody)
        storeAdminEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(storeAdminBasicEmailInfo)
        adminEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(adminBasicEmailInfo)
        adminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STORECREATED)
        storeAdminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STORECREATED, @abeClientInformation, @modifyingStoreFrontInterface)
        storeAdminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STORECREATED, storeAdminEmailInfo)
        adminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STORECREATED, adminEmailInfo)
    end
    java_overload :sendStoreCreatedEmails, 0
    

    def install()
        java_monitor.synchronize do
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Intall StoreFront Successfully: ")
            stringBuffer.appendint(((@portion.getCurrent().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            stringBuffer.append(" of ")
            stringBuffer.appendint(((@portion.getTotal().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            success = stringBuffer.to_s
            @modifyingStoreFrontInterface.install(@portion.getCurrent().to_i, @portion.getTotal().to_i)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "install()")
            end
            return success
        rescue StandardError => e
            error = "Failed to Install storefront"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "install()", e)
            end
            return error
        end
        end
    end
    java_overload :install, 0
    

    def insert()
        java_monitor.synchronize do
        begin
            success = "Added Successfully"
            values = @modifyingStoreFrontInterface.toVector()
            ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().insert(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add storefront"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
        end
    end
    java_overload :insert, 0
    

    def delete()
        begin
            success = "Delete Successfully"
            ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().delete(@storeName)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to delete storefronts table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    java_overload :delete, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFront, "org/allbinary/business/context/modules/storefront/StoreFront" unless const_defined?(:StoreFront, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Context; module ModulePackage; module Storefronts; autoload :StoreFrontsEntityFactory, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory" unless const_defined?(:StoreFrontsEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler" unless const_defined?(:UserEmailEventHandler, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons" unless const_defined?(:AdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :StoreAdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons" unless const_defined?(:StoreAdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo" unless const_defined?(:AdminEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :StoreEmailInfo, "org/allbinary/logic/communication/smtp/info/StoreEmailInfo" unless const_defined?(:StoreEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

