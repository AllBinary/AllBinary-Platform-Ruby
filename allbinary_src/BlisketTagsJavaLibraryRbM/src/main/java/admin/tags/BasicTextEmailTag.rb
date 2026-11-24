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
# package admin.tags

require "java/lang/JavaOverload"
# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/CustomTagSupport"

module ::Admin; module Tags

class BasicTextEmailTag < ::Tags::CustomTagSupport
    attr_accessor :logUtil, :subject, :body

    def jfields_admin_tags_BasicTextEmailTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @subject = nil unless instance_variable_defined?(:@subject)
        @body = nil unless instance_variable_defined?(:@body)
    end
    

    def initialize()
        super()
        jfields_admin_tags_BasicTextEmailTag
    end
    

    def setSubject(value)
        @subject = value
    end
    java_overload :setSubject, 1
    

    def setBody(value)
        @body = value
    end
    java_overload :setBody, 1
    

    def send()
        begin
            propertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            propertiesHashMap.put("Subject", @subject)
            propertiesHashMap.put("Body", @body)
            anyType = ::Admin::Taghelpers::BasicTextEmailHelperFactory.new().getInstance(propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("send", nil)
            method.invoke(anyType, nil)
            return "Email Sent"
        rescue StandardError => e
            error = "Failed to Send Email."
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "send()", e)
            end
            return error
        end
    end
    java_overload :send, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            @pageContext.getOut().print(self.send())
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Admin; module Taghelpers; autoload :BasicTextEmailHelperFactory, "admin/taghelpers/BasicTextEmailHelperFactory" unless const_defined?(:BasicTextEmailHelperFactory, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

