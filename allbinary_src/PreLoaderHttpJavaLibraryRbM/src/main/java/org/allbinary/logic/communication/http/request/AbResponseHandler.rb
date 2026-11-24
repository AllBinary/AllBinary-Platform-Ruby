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
# package org.allbinary.logic.communication.http.request

# require "javax/servlet/RequestDispatcher"
# require "javax/servlet/ServletException"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpServletResponse"
# require "javax/servlet/jsp/JspTagException"
# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request

class AbResponseHandler
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_http_request_AbResponseHandler
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_http_request_AbResponseHandler
    end
    

    # throws JspTagException
    def self.sendJspTagRedirect(pageContext, e)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Jsp Tag Exception", "AbResponseHandler", "sendJspRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().ERRORPAGE)
        rescue StandardError => e2
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LICENSINGERROR)
                logUtil.put("Exception in Redirect Handling", "AbResponseHandler", "sendJspRedirect", e)
            end
            raise JspTagException.new()
        end
    end
    

    # throws ServletException
    def self.sendServletRedirect(pageContext, e)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Jsp Tag Exception", "AbResponseHandler", "sendJspRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().ERRORPAGE)
        rescue StandardError => e2
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LICENSINGERROR)
                logUtil.put("Exception in Redirect Handling", "AbResponseHandler", "sendJspRedirect", e)
            end
            raise ServletException.new()
        end
    end
    

    # throws JspTagException
    def self.sendJspTagLicensingRedirect(pageContext, e)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Licensing Exception", "AbResponseHandler", "sendJspTagLicensingRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().LICENSEERRORPAGE)
        rescue StandardError => e2
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LICENSINGERROR)
                logUtil.put("Exception in Redirect Handling", "AbResponseHandler", "sendJspTagLicensingRedirect", e)
            end
            raise JspTagException.new()
        end
    end
    

    # throws ServletException
    def self.sendServletLicensingRedirect(pageContext, e)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Licensing Exception", "AbResponseHandler", "sendServletLicensingRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().LICENSEERRORPAGE)
        rescue StandardError => e2
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LICENSINGERROR)
                logUtil.put("Exception in Redirect Handling", "AbResponseHandler", "sendServletLicensingRedirect", e)
            end
            raise ServletException.new()
        end
    end
    

    # throws Exception
    def self.sendRedirect(pageContext, page)
        request = pageContext.getRequest()
        response = pageContext.getResponse()
        requestDispatcher = request.getRequestDispatcher(page)
        if response.isCommitted()
            response.sendRedirect(page)
        else
            begin
                requestDispatcher.forward(request, response)
            rescue StandardError => e
                pageContext.getOut().print("Error: " + page)
            end
        end
    end
end

module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

