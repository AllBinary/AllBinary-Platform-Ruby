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

require "java/lang/JavaOverload"
# require "java/io/IOException"
# require "javax/servlet/ServletException"
# require "javax/servlet/http/HttpServlet"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpServletResponse"

module ::Org; module Allbinary; module Servlet

class ImageServlet < HttpServlet
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_servlet_ImageServlet
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_servlet_ImageServlet
    end
    

    # throws ServletException, IOException
    def processRequest(request, response)
        inputStream = nil
        begin
            BlisketServletUtil.getInstance().init(request)
            requestURI = request.getRequestURI()
            file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + requestURI)
            inputStream = ::Org::Allbinary::Logic::Io::CloudStreamUtil.getInstance().getFileLocal(file)
            outputStream = ::Java::Io::ByteArrayOutputStream.new(8000)
            byteArray = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().getByteArray(inputStream, outputStream, (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
            response.setContentType("image/jpeg;charset=utf-8")
            response.getOutputStream().write(byteArray)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processRequest()", e)
            end
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(response.getOutputStream())
            if !::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(inputStream)
                response.sendError(HttpServletResponse::SC_NOT_FOUND)
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
        return "Serves Up Image"
    end
    java_overload :getServletInfo, 0
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :CloudStreamUtil, "org/allbinary/logic/io/CloudStreamUtil" unless const_defined?(:CloudStreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BlisketServletUtil, "org/allbinary/servlet/BlisketServletUtil" unless const_defined?(:BlisketServletUtil, false)

end; end; end

