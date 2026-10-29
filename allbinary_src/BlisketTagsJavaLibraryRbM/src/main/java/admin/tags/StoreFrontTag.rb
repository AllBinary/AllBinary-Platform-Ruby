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

class StoreFrontTag < CustomTagSupport
    attr_accessor :logUtil, :command, :storeName, :propertiesHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @command = nil
        @storeName = nil
        @propertiesHashMap = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setCommand(command)
        @command = command
    end
    

    def setStoreName(value)
        @storeName = value
    end
    

    # throws LicensingException
    def getCurrentLocation()
        begin
            anyType = StoreFrontHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("getCurrentLocation", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to retrieve current location"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getCurrentLocation()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def getCurrentHomeLocation()
        begin
            anyType = StoreFrontHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("getCurrentHomeLocation", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to retrieve current home location"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getCurrentHomeLocation()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if @command != nil
                @propertiesHashMap = StdUtil.getInstance().createHashMap()
                @propertiesHashMap.put(StoreFrontData.getInstance().NAME, @storeName)
                if (@command <=> org.allbinary.globals.GLOBALS2.GETCURRENTLOCATION) == 0
                    @pageContext.getOut().print(self.getCurrentLocation())
                elsif (@command <=> org.allbinary.globals.GLOBALS2.GETCURRENTHOMELOCATION) == 0
                    @pageContext.getOut().print(self.getCurrentHomeLocation())
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

require "java/util/HashMap"
require "admin/taghelpers/StoreFrontHelperFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

