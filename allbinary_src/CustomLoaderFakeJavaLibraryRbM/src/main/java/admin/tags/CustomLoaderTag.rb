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
# require "javax/servlet/jsp/JspTagException"
require "tags/CustomTagSupport"

module ::Admin; module Tags

class CustomLoaderTag < ::Tags::CustomTagSupport
    attr_accessor :logUtil, :command, :webappPath

    def jfields_admin_tags_CustomLoaderTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @command = nil unless instance_variable_defined?(:@command)
        @webappPath = nil unless instance_variable_defined?(:@webappPath)
    end
    

    def initialize()
        super()
        jfields_admin_tags_CustomLoaderTag
    end
    

    def setCommand(command)
        @command = command
    end
    java_overload :setCommand, 1
    

    def setWebappPath(value)
        @webappPath = value
    end
    java_overload :setWebappPath, 1
    

    # throws LicensingException
    def setCustomLoaderWebappPath()
        begin
            urlGlobals = ::Org::Allbinary::Globals::AppUrlGlobals.new()
            urlGlobals.setWebappPath(@webappPath)
            ::Org::Allbinary::Globals::URLGLOBALS.init(urlGlobals)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setCustomLoaderWebappPath()", e)
            end
        end
    end
    java_overload :setCustomLoaderWebappPath, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF(@commonStrings.START, self, @tagStrings.DO_START_TAG)
            end
            if @command != nil
                if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::SET) == 0
                    self.setCustomLoaderWebappPath()
                end
            end
            return SKIP_BODY
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Org; module Allbinary; module Globals; autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals" unless const_defined?(:AppUrlGlobals, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

