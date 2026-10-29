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

class StaticPagesTag < TableTag
    attr_accessor :logUtil, :xslFile

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @xslFile = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(StaticPagesHelperFactory.new())
        self.setTagRequestHelperFactory(StaticPagesRequestHelperFactory.new())
    end
    

    def setXsl(value)
        @xslFile = value
    end
    

    # throws LicensingException
    def generateStaticPages()
        begin
            anyType = StaticPagesRequestHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("generateStaticPages", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to generate staticpages table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateStaticPages()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def makePublic()
        begin
            anyType = StaticPagesRequestHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("makePublic", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to makePublic"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "makePublic()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(SearchData::GENERATESTATICPAGES) == 0
                        self.getPropertiesHashMap().put(TransformInfoData.getInstance().TEMPLATEFILENAME, @xslFile)
                        output = self.generateStaticPages()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output)
                        end
                    elsif self.getCommand().compareTo(SearchData::MAKEPUBLIC) == 0
                        output = self.makePublic()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output)
                        end
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

require "admin/taghelpers/StaticPagesHelperFactory"
require "admin/taghelpers/StaticPagesRequestHelperFactory"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchData"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"

