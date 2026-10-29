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
# package org.allbinary.business.context

# require "javax/servlet/jsp/PageContext"

class AbContext
    attr_accessor :logUtil, :commonStrings, :propertiesHashMap, :pageContext

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @propertiesHashMap = nil
        @pageContext = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, @commonStrings.CONSTRUCTOR)
        end
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
    end
    

    def getWeblisketSession()
        return WeblisketSession.new(@propertiesHashMap, @pageContext)
    end
    

    def getPageContext()
        return @pageContext
    end
    

    def getPropertiesHashMap()
        return @propertiesHashMap
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

