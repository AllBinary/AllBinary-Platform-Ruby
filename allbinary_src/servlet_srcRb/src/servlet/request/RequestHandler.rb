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
# package servlet.request

# require "java/io"
# require "java/net"
# require "javax/servlet"
# require "javax/servlet/http"

class RequestHandler < HttpServlet
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws ServletException
    def init(config)
        super(config)
    end
    

    def destroy()
    end
    

    # throws ServletException, IOException
    def processRequest(request, response)
        begin
            response.setContentType("text/html")
            out = response.getWriter()
            workflowInterface = RequestWorkFlowFactory.getInstance(request, response, self.getServletConfig(), self.getServletContext())
            if workflowInterface != nil
                out.print(workflowInterface.process())
            end
            out.flush()
            out.close()
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SERVLETERROR)
                @logUtil.put("Servlet LicensingException", self, "processRequest()", e)
            end
            response.sendRedirect(@abcs.globals.URLGLOBALS.LICENSEERRORPAGE)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SERVLETERROR)
                @logUtil.put("Servlet Exception", self, "processRequest()", e)
            end
            response.sendRedirect(@abcs.globals.URLGLOBALS.ERRORPAGE)
        end
    end
    

    # throws ServletException, IOException
    def doGet(request, response)
        self.processRequest(request, response)
    end
    

    # throws ServletException, IOException
    def doPost(request, response)
        self.processRequest(request, response)
    end
    

    def getServletInfo()
        return "WorkFlow Request Handler"
    end
end

require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"
require "org/allbinary/logic/control/workflow/RequestWorkFlowFactory"

