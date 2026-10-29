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
# package org.allbinary.logic.control.workflow

# require "javax/servlet/ServletConfig"
# require "javax/servlet/ServletContext"
# require "javax/servlet/ServletRequest"
# require "javax/servlet/ServletResponse"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"

class RequestWorkFlowFactory
    

    def initialize()
    end
    

    # throws Exception, LicensingException
    def self.getInstance(request, response, servletConfig, servletContext)
        httpRequest = request
        requestCommand = httpRequest.getPathInfo()
        index = (requestCommand.index(AbPathData.getInstance().SEPARATOR) || -1)
        storeName = requestCommand[0...index]
        requestName = requestCommand[index...requestCommand.length]
        return WorkFlowEntityFactory.getInstance().create2().get(requestName, storeName)
    end
    

    # throws Exception, LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(hashMap, pageContext)
        workFlowName = pageContext.getRequest().getParameter(WorkFlowData.getInstance().NAME)
        weblisketSession = WeblisketSession.new(hashMap, pageContext)
        storeName = weblisketSession.getStoreName()
        return WorkFlowEntityFactory.getInstance().create2().get(workFlowName, storeName)
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tables/workflow/WorkFlowEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/logic/control/workflow/WorkFlowData"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"

