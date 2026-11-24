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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/BasicTable"

module ::Admin; module Taghelpers

class QuoteHelper < BasicTable
    attr_accessor :logUtil, :abeClientInformation, :weblisketSession, :storeFrontInterface, :portion

    def jfields_admin_taghelpers_QuoteHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @portion = nil unless instance_variable_defined?(:@portion)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_QuoteHelper
        storeName = hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
        else
            @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFront.new()
        end
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
        @portion = ::Org::Allbinary::Business::Installer::Portion.new(hashMap)
    end
    

    # throws Exception
    def emailUser(quoteRequest)
        user = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().getUser(quoteRequest.getUserName())
        userEmailSubject = "Quote Request Receipt"
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("This is just a verification email. ")
        stringBuffer.append("We usually respond to quote request within 24 hours.")
        stringBuffer.append("\n\nThank You For Your Business.")
        userEmailTextBody = stringBuffer.to_s
        basicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::StoreEmailInfo.new(@storeFrontInterface, userEmailSubject, userEmailTextBody)
        emailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(basicEmailInfo)
        userEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::UserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::QUOTEREQUEST, user)
        userEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::QUOTEREQUEST, emailInfo)
    end
    java_overload :emailUser, 1
    

    # throws Exception
    def emailAdmins(quoteRequest)
        adminEmailSubject = "Quote Request"
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        basicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::StoreEmailInfo.new(@storeFrontInterface, adminEmailSubject, adminEmailTextBody)
        emailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(basicEmailInfo)
        storeAdminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::QUOTEREQUEST)
        adminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::QUOTEREQUEST, @abeClientInformation, @storeFrontInterface)
        storeAdminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::QUOTEREQUEST, emailInfo)
        adminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::QUOTEREQUEST, emailInfo)
    end
    java_overload :emailAdmins, 1
    

    # throws Exception
    def email()
        begin
            quoteRequestEntity = ::Org::Allbinary::DataPackage::Tables::User::Quoterequest::QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "email", e)
            end
            return "Thank You For Your Business.<p>"
        end
    end
    java_overload :email, 0
    

    def drop()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::Quoterequest::QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().dropTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop QuoteRequest table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    java_overload :drop, 0
    

    def create()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::Quoterequest::QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().createTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create new QuoteRequest table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    java_overload :create, 0
    

    def restore()
        begin
            success = "Restore Successful"
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().restoreTable(::Org::Allbinary::DataPackage::Tables::User::Quoterequest::QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance(), @portion)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "restore()")
            end
            return result
        rescue StandardError => e
            error = "Failed to restore backup"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "restore()", e)
            end
            return error
        end
    end
    java_overload :restore, 0
    

    def backup()
        begin
            success = "Restore Successful"
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().backupTable(::Org::Allbinary::DataPackage::Tables::User::Quoterequest::QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "backup()")
            end
            return result
        rescue StandardError => e
            error = "Failed to make backup"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
            end
            return error
        end
    end
    java_overload :backup, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFront, "org/allbinary/business/context/modules/storefront/StoreFront" unless const_defined?(:StoreFront, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Quoterequest; autoload :QuoteRequest, "org/allbinary/business/user/quoterequest/QuoteRequest" unless const_defined?(:QuoteRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Quoterequest; autoload :QuoteRequestEntity, "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntity" unless const_defined?(:QuoteRequestEntity, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Quoterequest; autoload :QuoteRequestEntityFactory, "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory" unless const_defined?(:QuoteRequestEntityFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler" unless const_defined?(:UserEmailEventHandler, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons" unless const_defined?(:AdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :StoreAdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons" unless const_defined?(:StoreAdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :UserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons" unless const_defined?(:UserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :StoreEmailInfo, "org/allbinary/logic/communication/smtp/info/StoreEmailInfo" unless const_defined?(:StoreEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlTableUtil, "org/allbinary/logic/communication/sql/AbSqlTableUtil" unless const_defined?(:AbSqlTableUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

