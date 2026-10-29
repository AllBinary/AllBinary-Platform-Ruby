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
require "org/allbinary/business/context/AbContext"
require "admin/taghelpers/TagHelperInterface"

class StaticPagesRequestHelper < AbContext
    include TagHelperInterface
    attr_accessor :logUtil, :abeClientInformation, :request, :storeName, :searchParams, :xslFile

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @request = nil
        @storeName = nil
        @searchParams = nil
        @xslFile = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
        initialize_fields
        @request = pageContext.getRequest()
        @xslFile = propertiesHashMap.get(TransformInfoData.getInstance().TEMPLATEFILENAME)
        self.getFormData()
    end
    

    def getFormData()
        @storeName = @request.getParameter(StoreFrontData.getInstance().NAME)
        @searchParams = SearchParams.new(@request)
    end
    

    # throws Exception
    def email()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Generated Static Pages Notification Email", self, "email")
            end
            storeFrontInterface = StoreFrontFactory.getInstance(@storeName)
            adminEmailSubject = "Generated Static Pages Email Notification"
            adminEmailTextBody = "Generated static pages for store: " + @storeName
            adminBasicEmailInfo = AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
            storeAdminBasicEmailInfo = StoreEmailInfo.new(storeFrontInterface, adminEmailSubject, adminEmailTextBody)
            storeAdminEmailInfo = EmailInfo.new(storeAdminBasicEmailInfo)
            adminEmailInfo = EmailInfo.new(adminBasicEmailInfo)
            adminUserEmailEventHandler = AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, UserEmailEventNameData::STOREGENERATINGSTATICPAGES)
            storeAdminUserEmailEventHandler = StoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(UserEmailEventNameData::STOREGENERATINGSTATICPAGES, @abeClientInformation, storeFrontInterface)
            storeAdminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::STOREGENERATINGSTATICPAGES, storeAdminEmailInfo)
            adminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::STOREGENERATINGSTATICPAGES, adminEmailInfo)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "email", e)
            end
        end
    end
    

    def generateStaticPages()
        begin
            contentType = AcceptableResponseGenerator.getInstance().get(@request)
            searchRequest = SearchRequest.new(nil, @searchParams, @xslFile, contentType, self.getPropertiesHashMap(), self.getPageContext())
            success = ProductListingFactory.getInstance(searchRequest).generateAll(@storeName)
            self.email()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "generateStaticPages()")
            end
            return success
        rescue StandardError => e
            error = "Failed to generate staticpages table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateStaticPages()", e)
            end
            return error
        end
    end
    

    def makePublic()
        begin
            storeFrontInterface = StoreFrontFactory.getInstance(@storeName)
            fromAbPath = AbPath.new(storeFrontInterface.getTestHtmlPath() + storeFrontInterface.getStaticPath(), StringUtil.getInstance().EMPTY_STRING)
            toAbPath = AbPath.new((URLGLOBALS.getWebappPath()).to_s + storeFrontInterface.getName() + (AbPathData.getInstance().SEPARATOR).to_s + (storeFrontInterface.getStaticPath()).to_s, StringUtil.getInstance().EMPTY_STRING)
            FileUtil.getInstance().copy(fromAbPath, toAbPath)
            success = "Made Public"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "makePublic()")
            end
            return success
        rescue StandardError => e
            error = "Failed to makePublic"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "makePublic()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/AcceptableResponseGenerator"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
require "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/info/AdminEmailInfo"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
require "org/allbinary/logic/communication/smtp/info/EmailInfo"
require "org/allbinary/logic/communication/smtp/info/StoreEmailInfo"
require "org/allbinary/logic/control/search/SearchParams"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "views/admin/inventory/listings/ProductListingFactory"

