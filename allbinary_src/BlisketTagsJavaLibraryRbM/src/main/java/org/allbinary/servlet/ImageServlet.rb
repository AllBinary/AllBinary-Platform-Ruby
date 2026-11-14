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
# package org.allbinary.servlet

# require "java/io/ByteArrayOutputStream"
# require "java/io/IOException"
# require "java/io/InputStream"
# require "javax/servlet/ServletException"
# require "javax/servlet/http/HttpServlet"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpServletResponse"

class ImageServlet < HttpServlet
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
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
            requestURI = request.getRequestURI()
            file = AbFile.createAbFile((URLGLOBALS.getWebappPath()).to_s + requestURI)
            inputStream = CloudStreamUtil.getInstance().getFileLocal(file)
            outputStream = ByteArrayOutputStream.new(8000)
            byteArray = StreamUtil.getInstance().getByteArray(inputStream, outputStream, Array.new(16384, 0))
            response.setContentType("image/jpeg;charset=utf-8")
            response.getOutputStream().write(byteArray)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processRequest()", e)
            end
        ensure
            StreamUtil.getInstance().close(response.getOutputStream())
            if !StreamUtil.getInstance().close(inputStream)
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
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
        return "Serves Up Image"
    end
end

autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CloudStreamUtil, "org/allbinary/logic/io/CloudStreamUtil"
autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BlisketServletUtil, "org/allbinary/servlet/BlisketServletUtil"

