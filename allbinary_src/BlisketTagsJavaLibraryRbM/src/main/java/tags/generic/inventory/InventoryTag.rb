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
# package tags.generic.inventory

require "java/lang/JavaOverload"
# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

module ::Tags; module Generic; module Inventory

class InventoryTag < ::Tags::StoreValidationTransformTag
    attr_accessor :logUtil

    def jfields_tags_generic_inventory_InventoryTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_tags_generic_inventory_InventoryTag
    end
    

    # throws LicensingException
    def search()
        begin
            anyType = ::Taghelpers::InventoryHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("search", nil)
            result = method.invoke(anyType, nil)
            @pageContext.getOut().print(result)
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to search Inventory by keyword"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "search()", e)
            end
            begin
                @pageContext.getOut().print(error + "<br>")
                @pageContext.getOut().print("Exception: " + (e).to_s + "<br>")
            rescue StandardError => e2
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LICENSINGERROR)
                    @logUtil.put("Exception in Exception Handling", self, "search()", e)
                end
            end
        end
    end
    java_overload :search, 0
    

    # throws LicensingException
    def viewSummary()
        begin
            anyType = ::Taghelpers::InventoryHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("viewSummary", nil)
            result = method.invoke(anyType, nil)
            @pageContext.getOut().print(result)
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to View Summary"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewSummary()", e)
            end
            begin
                @pageContext.getOut().print(error + "<br>")
                @pageContext.getOut().print("Exception: " + (e).to_s + "<br>")
            rescue StandardError => e2
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LICENSINGERROR)
                    @logUtil.put("Exception in Exception Handling", self, "viewSummary())", e)
                end
            end
        end
    end
    java_overload :viewSummary, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::SEARCH) == 0
                    self.setName("Basic Search Inventory View")
                    self.setObjectFile("views.generic.inventory.AutoSearchValidationInventoryView")
                    self.search()
                    return EVAL_BODY_INCLUDE
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::VIEWSUMMARY) == 0
                    self.setName("Basic Inventory View")
                    self.setObjectFile("views.generic.inventory.AutoValidationInventoryView")
                    self.viewSummary()
                    return EVAL_BODY_INCLUDE
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::VIEW) == 0
                    self.setName("Basic Inventory View")
                    self.setObjectFile("views.generic.inventory.AutoValidationInventoryView")
                    return InventoryTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
            end
            raise StandardError.new("Command Null")
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

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Taghelpers; autoload :InventoryHelperFactory, "taghelpers/InventoryHelperFactory" unless const_defined?(:InventoryHelperFactory, false); end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

