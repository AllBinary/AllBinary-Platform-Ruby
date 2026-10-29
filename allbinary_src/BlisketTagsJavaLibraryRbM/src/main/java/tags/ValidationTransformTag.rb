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
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
require "tags/TransformTag"

class ValidationTransformTag < TransformTag
    attr_accessor :logUtil, :xslFile, :logic

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @xslFile = nil
        @logic = nil
    end
    

    def initialize()
        super(ValidatedViewHelperFactory.new())
        initialize_fields
        @logic = true
    end
    

    def setXsl(value)
        @xslFile = value
        self.setTemplateFile(@xslFile)
    end
    

    def setLogic(logic)
        @logic = logic
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
    

    # throws Exception
    def validationInfo()
        begin
            addressHelperClass = self.getHelper().class
            method = addressHelperClass.getMethod("validationInfo", nil)
            result = method.invoke(self.getHelper(), nil)
            return result
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validationInfo()", e)
            end
            raise e
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                stringBuffer = StringMaker.new()
                request = @pageContext.getRequest()
                stringBuffer.append("ValidationViewTag Start For: ")
                stringBuffer.append(self.getName())
                stringBuffer.append("\nView FIle: ")
                stringBuffer.append(self.getObjectFile())
                stringBuffer.append("\nRequest URI: ")
                stringBuffer.append(request.getRequestURI())
                @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
            end
            self.setHelper()
            if self.isValid()
                super()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("View File: ")
                    stringBuffer.append(self.getObjectFile())
                    stringBuffer.append("\nLogic includes body if true=")
                    stringBuffer.appendboolean(@logic)
                    @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
                end
                if @logic
                    return EVAL_BODY_INCLUDE
                else
                    return SKIP_BODY
                end
            else
                @pageContext.getOut().print(self.validationInfo())
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("View File: ")
                    stringBuffer.append(self.getObjectFile())
                    stringBuffer.append("\nisValid()=false")
                    stringBuffer.append("\nLogic skips body if true=")
                    stringBuffer.appendboolean(@logic)
                    @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
                end
                if @logic
                    return SKIP_BODY
                else
                    return EVAL_BODY_INCLUDE
                end
            end
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    

    def doEndTag()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("Tag Ended", self, "doEndTag")
        end
        @logic = true
        return super()
    end
end

require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "taghelpers/ValidatedViewHelperFactory"

