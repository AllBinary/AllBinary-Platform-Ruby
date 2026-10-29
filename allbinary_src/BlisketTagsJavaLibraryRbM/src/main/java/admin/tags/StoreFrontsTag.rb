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
# package admin.tags

# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
# require "javax/servlet/jsp/tagext/TagSupport"
require "admin/tags/TableTag"

class StoreFrontsTag < TableTag
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(StoreFrontsHelperFactory.new())
        self.setTagRequestHelperFactory(StoreFrontsRequestHelperFactory.new())
    end
    

    # throws LicensingException
    def generateSelect()
        begin
            anyType = self.getTagHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            method = anyType.class.getMethod("generateSelect", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to generate storefronts select"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateSelect()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def install()
        begin
            anyType = self.getTagRequestHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            method = anyType.class.getMethod("install", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to generate storefronts select"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateSelect()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def sendStoreCreatedEmails()
        begin
            anyType = self.getTagRequestHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            method = anyType.class.getMethod("sendStoreCreatedEmails", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to send email"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "sendStoreCreatedEmails()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    storeFrontData = StoreFrontData.getInstance()
                    if self.getCommand().compareTo(storeFrontData.SELECT) == 0
                        @pageContext.getOut().print(self.generateSelect())
                    elsif self.getCommand().compareTo(storeFrontData.INSTALL) == 0
                        self.getPropertiesHashMap().put("current", self.getCurrent())
                        self.getPropertiesHashMap().put("total", self.getTotal())
                        if self.getCurrent().to_i == self.getTotal().to_i
                            return TagSupport::EVAL_BODY_INCLUDE
                        end
                        self.install()
                    elsif self.getCommand().compareTo(storeFrontData.INSTALL_COMPLETE) == 0
                        self.sendStoreCreatedEmails()
                    else
                        return super()
                    end
                end
            end
            return SKIP_BODY
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/StoreFrontsHelperFactory"
require "admin/taghelpers/StoreFrontsRequestHelperFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

