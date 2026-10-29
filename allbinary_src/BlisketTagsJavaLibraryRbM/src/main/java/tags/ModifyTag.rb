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
require "tags/HelperTag"

class ModifyTag < HelperTag
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(tagHelperFactoryInterface)
        super(tagHelperFactoryInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws LicensingException
    def insert()
        begin
            helperClass = self.getHelper().class
            method = helperClass.getMethod("insert", nil)
            result = method.invoke(self.getHelper(), nil)
            return result
        rescue StandardError => e
            error = "Failed to insert"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def delete()
        begin
            helperClass = self.getHelper().class
            method = helperClass.getMethod(@commonStrings.delete, nil)
            result = method.invoke(self.getHelper(), nil)
            return result
        rescue StandardError => e
            error = "Failed to delete"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def update()
        begin
            helperClass = self.getHelper().class
            method = helperClass.getMethod("update", nil)
            result = method.invoke(self.getHelper(), nil)
            return result
        rescue StandardError => e
            error = "Failed to update"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                request = @pageContext.getRequest()
                stringBuffer = StringMaker.new()
                stringBuffer.append("Command: ")
                stringBuffer.append(self.getCommand())
                stringBuffer.append(" Request URI: ")
                stringBuffer.append(request.getRequestURI())
                @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            end
            if self.getCommand() != nil
                self.setHelper()
                commonStrings = CommonStrings.getInstance()
                if self.getCommand().compareTo(commonStrings.INSERT) == 0
                    output = self.insert()
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                        @pageContext.getOut().print(output + "<br />")
                    end
                elsif self.getCommand().compareTo(commonStrings.DELETE) == 0
                    output = self.delete()
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                        @pageContext.getOut().print(output + "<br />")
                    end
                elsif self.getCommand().compareTo(commonStrings.UPDATE) == 0
                    output = self.update()
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                        @pageContext.getOut().print(output + "<br />")
                    end
                end
            end
            return @EVAL_BODY_INCLUDE
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/TagHelperFactoryInterface"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/string/CommonStrings"

