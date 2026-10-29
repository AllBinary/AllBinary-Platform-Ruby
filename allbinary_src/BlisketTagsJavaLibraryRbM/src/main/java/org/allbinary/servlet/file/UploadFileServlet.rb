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

class UploadFileServlet < HttpServlet
    attr_accessor :logUtil, :commonStrings, :requestHashMap, :fileName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @requestHashMap = nil
        @fileName = nil
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws ServletException, IOException
    def processRequest(request, response)
        isError = false
        inputStream = nil
        begin
            BlisketServletUtil.getInstance().init(request)
            @requestHashMap = MultipartRequestParams.new(request).toHashMap()
            filePath = @requestHashMap.get(FileUploadData.getInstance().UPLOAD_TO_FILE_PATH)
            if filePath == nil
                isError = true
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
                return
            end
            hashMap = StdUtil.getInstance().createHashMap()
            authenticationHelper = AuthenticationHelperFactory.new().getInstance(hashMap, request)
            if authenticationHelper.isAuthenticated()
                if AuthenticationHelperUtil.getInstance().isAuthorized(authenticationHelper, filePath)
                    self.saveFile(filePath)
                    response.setContentType("text/plain")
                    response.getOutputStream().write("OK!".bytes)
                else
                    isError = true
                    response.sendError(HttpServletResponse::SC_UNAUTHORIZED, "You are not Authorized")
                end
            else
                isError = true
                response.sendError(HttpServletResponse::SC_UNAUTHORIZED, "Please Login")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processRequest()", e)
            end
            isError = true
            response.sendError(HttpServletResponse::SC_NOT_FOUND)
        ensure
            if !isError
                StreamUtil.getInstance().close(response.getOutputStream())
            end
            if !StreamUtil.getInstance().close(inputStream)
            end
        end
    end
    

    # throws Exception
    def saveFile(filePath)
        fileOutputStream = nil
        begin
            fileItem = @requestHashMap.get(FileUploadData.getInstance().FILE_DATA)
            if fileItem != nil && fileItem.getSize() > 1
                @fileName = HttpRequestUtil.getInstance().generateFileName(fileItem.getName())
                if filePath.end_with?("/") || filePath.end_with?("\\")
                    filePath = filePath + @fileName
                end
                file = AbFile.createAbFile((URLGLOBALS.getWebappPath()).to_s + filePath)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("Uploaded File: ")
                    stringBuffer.append(@fileName)
                    stringBuffer.append(" New File: ")
                    stringBuffer.append(file.getPath())
                    @logUtil.putF(stringBuffer.to_s, self, "saveFile()")
                end
                HttpFileUploadUtil.log(fileItem)
                byteArray = fileItem.get()
                if file.isFile()
                    file.delete()
                    file.createNewFile()
                end
                fileOutputStream = AbFileOutputStream.createFromAbFile(file)
                fileOutputStream.write(byteArray)
            end
        ensure
            if fileOutputStream != nil
                fileOutputStream.close()
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
        return "Upload Cloud Files"
    end
end

require "java/util/HashMap"
require "admin/taghelpers/AuthenticationHelper"
require "admin/taghelpers/AuthenticationHelperFactory"
require "admin/taghelpers/AuthenticationHelperUtil"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/file/upload/FileUploadData"
require "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil"
require "org/allbinary/logic/communication/http/request/HttpRequestUtil"
require "org/allbinary/logic/communication/http/request/MultipartRequestParams"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbFileOutputStream"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/servlet/BlisketServletUtil"
require "org/allbinary/string/CommonStrings"
require "org/apache/commons/fileupload/FileItem"

