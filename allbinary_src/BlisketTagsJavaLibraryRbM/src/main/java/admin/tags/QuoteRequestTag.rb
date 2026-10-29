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
require "admin/tags/TableTag"

class QuoteRequestTag < TableTag
    attr_accessor :logUtil, :storeName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @storeName = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(QuoteHelperFactory.new())
        self.setTagRequestHelperFactory(QuoteRequestHelperFactory.new())
    end
    

    def setStoreName(storeName)
        @storeName = storeName
    end
    

    # throws LicensingException
    def email()
        begin
            anyType = QuoteHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("email", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to send QuoteRequest emails"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "sendEmail()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                self.getPropertiesHashMap().put(StoreFrontData.getInstance().NAME, @storeName)
                if self.getCommand().compareTo("EMAIL") == 0
                    self.email()
                    return @EVAL_BODY_INCLUDE
                else
                    return super()
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

require "admin/taghelpers/QuoteHelperFactory"
require "admin/taghelpers/QuoteRequestHelperFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

