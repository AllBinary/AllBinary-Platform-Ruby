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

class AbResponseHandler
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws JspTagException
    def self.sendJspTagRedirect(pageContext, e)
        logUtil = LogUtil.getInstance()
        begin
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Jsp Tag Exception", "AbResponseHandler", "sendJspRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().ERRORPAGE)
        rescue StandardError => e2
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().LICENSINGERROR)
                logUtil.put("Exception in Redirect Handling", "AbResponseHandler", "sendJspRedirect", e)
            end
            raise JspTagException.new()
        end
    end
    

    # throws ServletException
    def self.sendServletRedirect(pageContext, e)
        logUtil = LogUtil.getInstance()
        begin
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Jsp Tag Exception", "AbResponseHandler", "sendJspRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().ERRORPAGE)
        rescue StandardError => e2
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().LICENSINGERROR)
                logUtil.put("Exception in Redirect Handling", "AbResponseHandler", "sendJspRedirect", e)
            end
            raise ServletException.new()
        end
    end
    

    # throws JspTagException
    def self.sendJspTagLicensingRedirect(pageContext, e)
        logUtil = LogUtil.getInstance()
        begin
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Licensing Exception", "AbResponseHandler", "sendJspTagLicensingRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().LICENSEERRORPAGE)
        rescue StandardError => e2
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().LICENSINGERROR)
                logUtil.put("Exception in Redirect Handling", "AbResponseHandler", "sendJspTagLicensingRedirect", e)
            end
            raise JspTagException.new()
        end
    end
    

    # throws ServletException
    def self.sendServletLicensingRedirect(pageContext, e)
        logUtil = LogUtil.getInstance()
        begin
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().JSPTAGERROR)
                logUtil.put("Licensing Exception", "AbResponseHandler", "sendServletLicensingRedirect()", e)
            end
            AbResponseHandler.sendRedirect(pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().LICENSEERRORPAGE)
        rescue StandardError => e2
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().LICENSINGERROR)
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

require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"

