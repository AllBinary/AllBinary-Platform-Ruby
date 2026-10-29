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
# package org.allbinary.servlet.file

# require "java/io/IOException"
# require "java/io/InputStream"
# require "javax/servlet/ServletException"
# require "javax/servlet/http/HttpServlet"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpServletResponse"

class DownloadFileServlet < HttpServlet
    attr_accessor :logUtil, :commonStrings, :DOWNLOAD, :DEFAULT_BUFFER_SIZE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @DOWNLOAD = "download"
        @DEFAULT_BUFFER_SIZE = 16384
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws ServletException, IOException
    def processRequest(request, response)
        inputStream = nil
        begin
            BlisketServletUtil.getInstance().init(request)
            requestPath = request.getRequestURI()
            if requestPath == nil
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
                return
            end
            beginIndex = (requestPath.index(@DOWNLOAD) || -1)
            filePath = StringUtil.getInstance().EMPTY_STRING
            if beginIndex >= 0
                filePath = requestPath[beginIndex + @DOWNLOAD.length..]
            else
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
            end
            file = AbFile.createAbFile((URLGLOBALS.getWebappPath()).to_s + filePath)
            if !file.exists()
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
                return
            end
            hashMap = StdUtil.getInstance().createHashMap()
            authenticationHelper = AuthenticationHelperFactory.new().getInstance(hashMap, request)
            if authenticationHelper.isAuthenticated()
                if AuthenticationHelperUtil.getInstance().isAuthorized(authenticationHelper, filePath)
                    inputStream = CloudStreamUtil.getInstance().getFile(file)
                    contentType = getServletContext().getMimeType(file.getName())
                    if contentType == nil
                        contentType = "application/octet-stream"
                    end
                    response.reset()
                    response.setBufferSize(@DEFAULT_BUFFER_SIZE)
                    response.setContentType(contentType)
                    response.setHeader("Content-Length", (file.length()).to_s)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("attachment; filename=\"")
                    stringBuffer.append(file.getName())
                    stringBuffer.append(CommonSeps.getInstance().QUOTE)
                    response.setHeader("Content-Disposition", stringBuffer.to_s)
                    StreamUtil.getInstance().get(inputStream, response.getOutputStream(), Array.new(16348, 0))
                else
                    response.sendError(HttpServletResponse::SC_UNAUTHORIZED, "You are not Authorized")
                end
            else
                response.sendError(HttpServletResponse::SC_UNAUTHORIZED, "Please Login")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processRequest()", e)
            end
            response.sendError(HttpServletResponse::SC_NOT_FOUND)
        ensure
            StreamUtil.getInstance().close(response.getOutputStream())
            if !StreamUtil.getInstance().close(inputStream)
            end
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
        return "Serves Up Cloud Files"
    end
end

require "java/util/HashMap"
require "admin/taghelpers/AuthenticationHelper"
require "admin/taghelpers/AuthenticationHelperFactory"
require "admin/taghelpers/AuthenticationHelperUtil"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/CloudStreamUtil"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/servlet/BlisketServletUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

