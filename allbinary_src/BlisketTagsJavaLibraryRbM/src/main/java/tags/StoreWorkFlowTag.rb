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
require "tags/HelperTag"

#and hidden field removal
class StoreWorkFlowTag < HelperTag
    attr_accessor :logUtil, :viewName, :viewFile

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @viewName = nil
        @viewFile = nil
    end
    

    def initialize()
        super(StoreTagWorkFlowHelperFactory.new())
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def setName(value)
        @viewName = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().NAME, @viewName)
    end
    

    # throws Exception
    def process()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
            end
            helperClass = self.getHelper().class
            method = helperClass.getMethod(@commonStrings.PROCESS, nil)
            result = method.invoke(self.getHelper(), nil)
            return result.to_i
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF(@commonStrings.START, self, @tagStrings.DO_START_TAG)
            end
            self.setHelper()
            return self.process()
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
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "taghelpers/StoreTagWorkFlowHelperFactory"

