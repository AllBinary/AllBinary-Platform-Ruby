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
# package tags

# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/TransformTag"

class XmlValidationTransformTag < TransformTag
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    def isValid()
        begin
            helperClass = self.getHelper().class
            method = helperClass.getMethod(@commonStrings.IS_VALID, nil)
            result = method.invoke(self.getHelper(), nil)
            return result
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.IS_VALID, e)
            end
            raise e
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setHelper()
            if self.isValid()
                super()
                return @EVAL_BODY_INCLUDE
            else
                super()
                return @SKIP_BODY
            end
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

