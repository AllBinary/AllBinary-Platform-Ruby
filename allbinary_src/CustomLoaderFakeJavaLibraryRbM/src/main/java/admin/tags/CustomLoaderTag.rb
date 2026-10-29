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

# require "javax/servlet/jsp/JspTagException"
require "tags/CustomTagSupport"

class CustomLoaderTag < CustomTagSupport
    attr_accessor :logUtil, :command, :webappPath

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @command = nil
        @webappPath = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setCommand(command)
        @command = command
    end
    

    def setWebappPath(value)
        @webappPath = value
    end
    

    # throws LicensingException
    def setCustomLoaderWebappPath()
        begin
            urlGlobals = AppUrlGlobals.new()
            urlGlobals.setWebappPath(@webappPath)
            URLGLOBALS.init(urlGlobals)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setCustomLoaderWebappPath()", e)
            end
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF(@commonStrings.START, self, @tagStrings.DO_START_TAG)
            end
            if @command != nil
                if (@command <=> GLOBALS2.SET) == 0
                    self.setCustomLoaderWebappPath()
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

require "org/allbinary/globals/AppUrlGlobals"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

