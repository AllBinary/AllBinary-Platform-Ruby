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

require "java/lang/JavaOverload"
# require "java/io/PrintWriter"
# require "java/io/IOException"
# require "java/net"
# require "javax/servlet"
# require "javax/servlet/http"

module ::Servlet; module Request

class RequestHandler < HttpServlet
    attr_accessor :logUtil

    def jfields_servlet_request_RequestHandler
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_servlet_request_RequestHandler
    end
    

    # throws ServletException
    def init(config)
        RequestHandler.superclass.java_super_method(:init, 1).bind(self).call(config)
    end
    java_overload :init, 1
    

    def destroy()
    end
    java_overload :destroy, 0
    

    # throws ServletException, IOException
    def processRequest(request, response)
        begin
            response.setContentType("text/html")
            out = response.getWriter()
            workflowInterface = ::Org::Allbinary::Logic::ControlPackage::Workflow::RequestWorkFlowFactory.getInstance(request, response, self.getServletConfig(), self.getServletContext())
            if workflowInterface != nil
                out.print(workflowInterface.process())
            end
            out.flush()
            out.close()
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SERVLETERROR)
                @logUtil.put("Servlet LicensingException", self, "processRequest()", e)
            end
            response.sendRedirect(@abcs.globals.URLGLOBALS.LICENSEERRORPAGE)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SERVLETERROR)
                @logUtil.put("Servlet Exception", self, "processRequest()", e)
            end
            response.sendRedirect(@abcs.globals.URLGLOBALS.ERRORPAGE)
        end
    end
    java_overload :processRequest, 2
    

    # throws ServletException, IOException
    def doGet(request, response)
        self.processRequest(request, response)
    end
    java_overload :doGet, 2
    

    # throws ServletException, IOException
    def doPost(request, response)
        self.processRequest(request, response)
    end
    java_overload :doPost, 2
    

    def getServletInfo()
        return "WorkFlow Request Handler"
    end
    java_overload :getServletInfo, 0
end

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :WorkFlowInterface, "org/allbinary/logic/control/workflow/WorkFlowInterface" unless const_defined?(:WorkFlowInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :RequestWorkFlowFactory, "org/allbinary/logic/control/workflow/RequestWorkFlowFactory" unless const_defined?(:RequestWorkFlowFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

