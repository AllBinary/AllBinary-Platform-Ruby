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
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/business/context/AbContext"
require "admin/taghelpers/TagHelperInterface"

module ::Admin; module Taghelpers

class StaticPagesRequestHelper < ::Org::Allbinary::Business::Context::AbContext
    include TagHelperInterface
    attr_accessor :logUtil, :abeClientInformation, :request, :storeName, :searchParams, :xslFile

    def jfields_admin_taghelpers_StaticPagesRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @searchParams = nil unless instance_variable_defined?(:@searchParams)
        @xslFile = nil unless instance_variable_defined?(:@xslFile)
    end
    

    def initialize(propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
        jfields_admin_taghelpers_StaticPagesRequestHelper
        @request = pageContext.getRequest()
        @xslFile = propertiesHashMap.get(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().TEMPLATEFILENAME)
        self.getFormData()
    end
    

    def getFormData()
        @storeName = @request.getParameter(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        @searchParams = ::Org::Allbinary::Logic::ControlPackage::Search::SearchParams.new(@request)
    end
    java_overload :getFormData, 0
    

    # throws Exception
    def email()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Generated Static Pages Notification Email", self, "email")
            end
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(@storeName)
            adminEmailSubject = "Generated Static Pages Email Notification"
            adminEmailTextBody = "Generated static pages for store: " + @storeName
            adminBasicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
            storeAdminBasicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::StoreEmailInfo.new(storeFrontInterface, adminEmailSubject, adminEmailTextBody)
            storeAdminEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(storeAdminBasicEmailInfo)
            adminEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(adminBasicEmailInfo)
            adminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STOREGENERATINGSTATICPAGES)
            storeAdminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STOREGENERATINGSTATICPAGES, @abeClientInformation, storeFrontInterface)
            storeAdminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STOREGENERATINGSTATICPAGES, storeAdminEmailInfo)
            adminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::STOREGENERATINGSTATICPAGES, adminEmailInfo)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "email", e)
            end
        end
    end
    java_overload :email, 0
    

    def generateStaticPages()
        begin
            contentType = ::Org::Allbinary::Logic::Communication::Http::AcceptableResponseGenerator.getInstance().get(@request)
            searchRequest = ::Org::Allbinary::Logic::ControlPackage::Search::SearchRequest.new(nil, @searchParams, @xslFile, contentType, self.getPropertiesHashMap(), self.getPageContext())
            success = ::Views::Admin::Inventory::Listings::ProductListingFactory.getInstance(searchRequest).generateAll(@storeName)
            self.email()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "generateStaticPages()")
            end
            return success
        rescue StandardError => e
            error = "Failed to generate staticpages table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateStaticPages()", e)
            end
            return error
        end
    end
    java_overload :generateStaticPages, 0
    

    def makePublic()
        begin
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(@storeName)
            fromAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(storeFrontInterface.getTestHtmlPath() + storeFrontInterface.getStaticPath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            toAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + storeFrontInterface.getName() + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s + (storeFrontInterface.getStaticPath()).to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().copy(fromAbPath, toAbPath)
            success = "Made Public"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "makePublic()")
            end
            return success
        rescue StandardError => e
            error = "Failed to makePublic"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "makePublic()", e)
            end
            return error
        end
    end
    java_overload :makePublic, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; autoload :AcceptableResponseGenerator, "org/allbinary/logic/communication/http/AcceptableResponseGenerator" unless const_defined?(:AcceptableResponseGenerator, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler" unless const_defined?(:UserEmailEventHandler, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons" unless const_defined?(:AdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :StoreAdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons" unless const_defined?(:StoreAdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo" unless const_defined?(:AdminEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :StoreEmailInfo, "org/allbinary/logic/communication/smtp/info/StoreEmailInfo" unless const_defined?(:StoreEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams" unless const_defined?(:SearchParams, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Views; module Admin; module Inventory; module Listings; autoload :ProductListingFactory, "views/admin/inventory/listings/ProductListingFactory" unless const_defined?(:ProductListingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

