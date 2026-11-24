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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/io/IOException"
# require "javax/servlet/ServletException"
# require "javax/servlet/http/HttpServlet"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpServletResponse"

module ::Org; module Allbinary; module Servlet; module FilePackage

class UploadFileServlet < HttpServlet
    attr_accessor :logUtil, :commonStrings, :requestHashMap, :fileName

    def jfields_org_allbinary_servlet_file_UploadFileServlet
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @requestHashMap = nil unless instance_variable_defined?(:@requestHashMap)
        @fileName = nil unless instance_variable_defined?(:@fileName)
    end

    def initialize
        super()
        jfields_org_allbinary_servlet_file_UploadFileServlet
    end
    

    # throws ServletException, IOException
    def processRequest(request, response)
        isError = false
        inputStream = nil
        begin
            ::Org::Allbinary::Servlet::BlisketServletUtil.getInstance().init(request)
            @requestHashMap = ::Org::Allbinary::Logic::Communication::Http::Request::MultipartRequestParams.new(request).toHashMap()
            filePath = @requestHashMap.get(::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::FileUploadData.getInstance().UPLOAD_TO_FILE_PATH)
            if filePath == nil
                isError = true
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
                return
            end
            hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            authenticationHelper = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(hashMap, request)
            if authenticationHelper.isAuthenticated()
                if ::Admin::Taghelpers::AuthenticationHelperUtil.getInstance().isAuthorized(authenticationHelper, filePath)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processRequest()", e)
            end
            isError = true
            response.sendError(HttpServletResponse::SC_NOT_FOUND)
        ensure
            if !isError
                ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(response.getOutputStream())
            end
            if !::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(inputStream)
            end
        end
    end
    java_overload :processRequest, 2
    

    # throws Exception
    def saveFile(filePath)
        fileOutputStream = nil
        begin
            fileItem = @requestHashMap.get(::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::FileUploadData.getInstance().FILE_DATA)
            if fileItem != nil && fileItem.getSize() > 1
                @fileName = ::Org::Allbinary::Logic::Communication::Http::Request::HttpRequestUtil.getInstance().generateFileName(fileItem.getName())
                if filePath.end_with?("/") || filePath.end_with?("\\")
                    filePath = filePath + @fileName
                end
                file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + filePath)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("Uploaded File: ")
                    stringBuffer.append(@fileName)
                    stringBuffer.append(" New File: ")
                    stringBuffer.append(file.getPath())
                    @logUtil.putF(stringBuffer.to_s, self, "saveFile()")
                end
                ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.log(fileItem)
                byteArray = fileItem.get()
                if file.isFile()
                    file.delete()
                    file.createNewFile()
                end
                fileOutputStream = ::Org::Allbinary::Logic::Io::AbFileOutputStream.createFromAbFile(file)
                fileOutputStream.write(byteArray)
            end
        ensure
            if fileOutputStream != nil
                fileOutputStream.close()
            end
        end
    end
    java_overload :saveFile, 1
    

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
        return "Upload Cloud Files"
    end
    java_overload :getServletInfo, 0
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Admin; module Taghelpers; autoload :AuthenticationHelper, "admin/taghelpers/AuthenticationHelper" unless const_defined?(:AuthenticationHelper, false); end; end
module ::Admin; module Taghelpers; autoload :AuthenticationHelperFactory, "admin/taghelpers/AuthenticationHelperFactory" unless const_defined?(:AuthenticationHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :AuthenticationHelperUtil, "admin/taghelpers/AuthenticationHelperUtil" unless const_defined?(:AuthenticationHelperUtil, false); end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :FileUploadData, "org/allbinary/logic/communication/http/file/upload/FileUploadData" unless const_defined?(:FileUploadData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :HttpFileUploadUtil, "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil" unless const_defined?(:HttpFileUploadUtil, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :HttpRequestUtil, "org/allbinary/logic/communication/http/request/HttpRequestUtil" unless const_defined?(:HttpRequestUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :MultipartRequestParams, "org/allbinary/logic/communication/http/request/MultipartRequestParams" unless const_defined?(:MultipartRequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream" unless const_defined?(:AbFileOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Servlet; autoload :BlisketServletUtil, "org/allbinary/servlet/BlisketServletUtil" unless const_defined?(:BlisketServletUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

