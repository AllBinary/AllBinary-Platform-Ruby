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
require "admin/tags/TableTag"

module ::Admin; module Tags

class OrderItemsTag < TableTag
    attr_accessor :logUtil, :status

    def jfields_admin_tags_OrderItemsTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @status = nil unless instance_variable_defined?(:@status)
    end
    

    def initialize()
        super()
        jfields_admin_tags_OrderItemsTag
        self.setTagHelperFactory(::Admin::Taghelpers::OrderItemsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::OrderItemsRequestHelperFactory.new())
    end
    

    def setStatus(value)
        @status = value
    end
    java_overload :setStatus, 1
    

    # throws LicensingException
    def setOrderStatus()
        begin
            anyType = ::Admin::Taghelpers::OrderItemsRequestHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            if @status == nil
                helperClass = anyType.class
                method = helperClass.getMethod("setOrderStatus", nil)
                result = method.invoke(anyType, nil)
                return result
            else
                helperClass = anyType.class
                methodParams = [@status.class]
                method = helperClass.getMethod("setOrderStatus", methodParams)
                methodArgs = [@status]
                result = method.invoke(anyType, methodArgs)
                return result
            end
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to set Order status to: " + @status
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus()", e)
            end
            return error
        end
    end
    java_overload :setOrderStatus, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    self.getPropertiesHashMap().put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS, @status)
                    if self.getCommand().compareTo(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SETSTATUS) == 0
                        @pageContext.getOut().print(self.setOrderStatus())
                    else
                        return OrderItemsTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
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

module ::Admin; module Taghelpers; autoload :OrderItemsHelperFactory, "admin/taghelpers/OrderItemsHelperFactory" unless const_defined?(:OrderItemsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :OrderItemsRequestHelperFactory, "admin/taghelpers/OrderItemsRequestHelperFactory" unless const_defined?(:OrderItemsRequestHelperFactory, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

