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

autoload :HashMap, "java/util/HashMap"
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :AcceptableResponseGenerator, "org/allbinary/logic/communication/http/AcceptableResponseGenerator"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
autoload :StoreAdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons"
autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo"
autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo"
autoload :StoreEmailInfo, "org/allbinary/logic/communication/smtp/info/StoreEmailInfo"
autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams"
autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest"
autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData"
autoload :ProductListingFactory, "views/admin/inventory/listings/ProductListingFactory"

