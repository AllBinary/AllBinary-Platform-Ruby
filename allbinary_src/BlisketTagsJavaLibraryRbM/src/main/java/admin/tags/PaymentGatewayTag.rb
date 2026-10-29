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

class PaymentGatewayTag < TableTag
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(PaymentGatewayHelperFactory.new())
        self.setTagRequestHelperFactory(PaymentGatewayHelperFactory.new())
    end
    

    # throws LicensingException, Exception
    def process()
        begin
            anyType = PaymentGatewayHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod(@commonStrings.PROCESS, nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            @logUtil.put("LicensingException", self, @commonStrings.PROCESS, e)
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
            end
            raise e
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR) == 0 || self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.AUTHORIZEORDERANDEVALBODY) == 0 || self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.AUTHORIZEFORMEVALBODYONERROR) == 0
                    output = self.process()
                    begin
                        @pageContext.getOut().print(output + "<br />")
                    end
                    if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR) == 0
                        return @SKIP_BODY
                    else
                        return @EVAL_BODY_INCLUDE
                    end
                else
                    return super()
                end
            end
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/PaymentGatewayHelperFactory"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

