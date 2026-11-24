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

class DownloadFileServlet < HttpServlet
    attr_accessor :logUtil, :commonStrings, :DOWNLOAD, :DEFAULT_BUFFER_SIZE

    def jfields_org_allbinary_servlet_file_DownloadFileServlet
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @DOWNLOAD = "download"
        @DEFAULT_BUFFER_SIZE = 16384
    end

    def initialize
        super()
        jfields_org_allbinary_servlet_file_DownloadFileServlet
    end
    

    # throws ServletException, IOException
    def processRequest(request, response)
        inputStream = nil
        begin
            ::Org::Allbinary::Servlet::BlisketServletUtil.getInstance().init(request)
            requestPath = request.getRequestURI()
            if requestPath == nil
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
                return
            end
            beginIndex = (requestPath.index(@DOWNLOAD) || -1)
            filePath = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if beginIndex >= 0
                filePath = requestPath[beginIndex + @DOWNLOAD.length..]
            else
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
            end
            file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + filePath)
            if !file.exists()
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
                return
            end
            hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            authenticationHelper = ::Admin::Taghelpers::AuthenticationHelperFactory.new().getInstance(hashMap, request)
            if authenticationHelper.isAuthenticated()
                if ::Admin::Taghelpers::AuthenticationHelperUtil.getInstance().isAuthorized(authenticationHelper, filePath)
                    inputStream = ::Org::Allbinary::Logic::Io::CloudStreamUtil.getInstance().getFile(file)
                    contentType = getServletContext().getMimeType(file.getName())
                    if contentType == nil
                        contentType = "application/octet-stream"
                    end
                    response.reset()
                    response.setBufferSize(@DEFAULT_BUFFER_SIZE)
                    response.setContentType(contentType)
                    response.setHeader("Content-Length", (file.length()).to_s)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("attachment; filename=\"")
                    stringBuffer.append(file.getName())
                    stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().QUOTE)
                    response.setHeader("Content-Disposition", stringBuffer.to_s)
                    ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().get(inputStream, response.getOutputStream(), (Array.new(16348, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
                else
                    response.sendError(HttpServletResponse::SC_UNAUTHORIZED, "You are not Authorized")
                end
            else
                response.sendError(HttpServletResponse::SC_UNAUTHORIZED, "Please Login")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processRequest()", e)
            end
            response.sendError(HttpServletResponse::SC_NOT_FOUND)
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(response.getOutputStream())
            if !::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(inputStream)
            end
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
        return "Serves Up Cloud Files"
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
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :CloudStreamUtil, "org/allbinary/logic/io/CloudStreamUtil" unless const_defined?(:CloudStreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Servlet; autoload :BlisketServletUtil, "org/allbinary/servlet/BlisketServletUtil" unless const_defined?(:BlisketServletUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

