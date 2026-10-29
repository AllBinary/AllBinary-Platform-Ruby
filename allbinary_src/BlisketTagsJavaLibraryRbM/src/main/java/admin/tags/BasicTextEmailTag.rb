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
require "tags/CustomTagSupport"

class BasicTextEmailTag < CustomTagSupport
    attr_accessor :logUtil, :subject, :body

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @subject = nil
        @body = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setSubject(value)
        @subject = value
    end
    

    def setBody(value)
        @body = value
    end
    

    def send()
        begin
            propertiesHashMap = StdUtil.getInstance().createHashMap()
            propertiesHashMap.put("Subject", @subject)
            propertiesHashMap.put("Body", @body)
            anyType = BasicTextEmailHelperFactory.new().getInstance(propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("send", nil)
            method.invoke(anyType, nil)
            return "Email Sent"
        rescue StandardError => e
            error = "Failed to Send Email."
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "send()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            @pageContext.getOut().print(self.send())
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "java/util/HashMap"
require "admin/taghelpers/BasicTextEmailHelperFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"

