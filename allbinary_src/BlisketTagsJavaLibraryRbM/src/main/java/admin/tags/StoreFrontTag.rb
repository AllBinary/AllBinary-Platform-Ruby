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

class StoreFrontTag < ::Tags::CustomTagSupport
    attr_accessor :logUtil, :command, :storeName, :propertiesHashMap

    def jfields_admin_tags_StoreFrontTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @command = nil unless instance_variable_defined?(:@command)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
    end
    

    def initialize()
        super()
        jfields_admin_tags_StoreFrontTag
    end
    

    def setCommand(command)
        @command = command
    end
    java_overload :setCommand, 1
    

    def setStoreName(value)
        @storeName = value
    end
    java_overload :setStoreName, 1
    

    # throws LicensingException
    def getCurrentLocation()
        begin
            anyType = ::Admin::Taghelpers::StoreFrontHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("getCurrentLocation", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to retrieve current location"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getCurrentLocation()", e)
            end
            return error
        end
    end
    java_overload :getCurrentLocation, 0
    

    # throws LicensingException
    def getCurrentHomeLocation()
        begin
            anyType = ::Admin::Taghelpers::StoreFrontHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("getCurrentHomeLocation", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to retrieve current home location"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getCurrentHomeLocation()", e)
            end
            return error
        end
    end
    java_overload :getCurrentHomeLocation, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if @command != nil
                @propertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
                @propertiesHashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, @storeName)
                if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::GETCURRENTLOCATION) == 0
                    @pageContext.getOut().print(self.getCurrentLocation())
                elsif (@command <=> ::Org::Allbinary::Globals::GLOBALS2::GETCURRENTHOMELOCATION) == 0
                    @pageContext.getOut().print(self.getCurrentHomeLocation())
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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Admin; module Taghelpers; autoload :StoreFrontHelperFactory, "admin/taghelpers/StoreFrontHelperFactory" unless const_defined?(:StoreFrontHelperFactory, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

