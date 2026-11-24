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
# package tags.generic.address.shipping

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

module ::Tags; module Generic; module Address; module Shipping

class ShippingAddressTag < ::Tags::StoreValidationTransformTag
    attr_accessor :value

    def jfields_tags_generic_address_shipping_ShippingAddressTag
        @value = nil unless instance_variable_defined?(:@value)
    end
    

    def initialize()
        super()
        jfields_tags_generic_address_shipping_ShippingAddressTag
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::VIEW) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.ViewShippingAddressesView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::EDIT) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.EditShippingAddressesView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::NEW) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.NewShippingAddressesView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.AddShippingAddressesView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.DeleteShippingAddressesView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Business::User::Address::ShippingAddressData::SELECT) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.SelectShippingAddressesView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Business::User::Address::ShippingAddressData::SETTOBILLINGADDRESS) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.SetShippingAddressesView")
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return ShippingAddressTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
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

module ::Org; module Allbinary; module Business; module User; module Address; autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData" unless const_defined?(:ShippingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end

end; end; end; end

