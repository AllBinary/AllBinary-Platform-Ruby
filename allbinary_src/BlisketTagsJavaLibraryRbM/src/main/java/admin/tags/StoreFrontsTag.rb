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
# require "javax/servlet/jsp/tagext/TagSupport"
require "admin/tags/TableTag"

module ::Admin; module Tags

class StoreFrontsTag < TableTag
    attr_accessor :logUtil

    def jfields_admin_tags_StoreFrontsTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_admin_tags_StoreFrontsTag
        self.setTagHelperFactory(::Admin::Taghelpers::StoreFrontsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::StoreFrontsRequestHelperFactory.new())
    end
    

    # throws LicensingException
    def generateSelect()
        begin
            anyType = self.getTagHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            method = anyType.class.getMethod("generateSelect", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to generate storefronts select"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateSelect()", e)
            end
            return error
        end
    end
    java_overload :generateSelect, 0
    

    # throws LicensingException
    def install()
        begin
            anyType = self.getTagRequestHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            method = anyType.class.getMethod("install", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to generate storefronts select"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateSelect()", e)
            end
            return error
        end
    end
    java_overload :install, 0
    

    # throws LicensingException
    def sendStoreCreatedEmails()
        begin
            anyType = self.getTagRequestHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            method = anyType.class.getMethod("sendStoreCreatedEmails", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to send email"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "sendStoreCreatedEmails()", e)
            end
            return error
        end
    end
    java_overload :sendStoreCreatedEmails, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    storeFrontData = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance()
                    if self.getCommand().compareTo(storeFrontData.SELECT) == 0
                        @pageContext.getOut().print(self.generateSelect())
                    elsif self.getCommand().compareTo(storeFrontData.INSTALL) == 0
                        self.getPropertiesHashMap().put("current", self.getCurrent())
                        self.getPropertiesHashMap().put("total", self.getTotal())
                        if self.getCurrent().to_i == self.getTotal().to_i
                            return TagSupport::EVAL_BODY_INCLUDE
                        end
                        self.install()
                    elsif self.getCommand().compareTo(storeFrontData.INSTALL_COMPLETE) == 0
                        self.sendStoreCreatedEmails()
                    else
                        return StoreFrontsTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
                    end
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

module ::Admin; module Taghelpers; autoload :StoreFrontsHelperFactory, "admin/taghelpers/StoreFrontsHelperFactory" unless const_defined?(:StoreFrontsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :StoreFrontsRequestHelperFactory, "admin/taghelpers/StoreFrontsRequestHelperFactory" unless const_defined?(:StoreFrontsRequestHelperFactory, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

