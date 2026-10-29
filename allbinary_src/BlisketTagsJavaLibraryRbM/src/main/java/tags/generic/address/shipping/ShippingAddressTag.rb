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

# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class ShippingAddressTag < StoreValidationTransformTag
    attr_accessor :value

    def initialize_fields
        @value = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.ViewShippingAddressesView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.EDIT) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.EditShippingAddressesView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.NEW) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.NewShippingAddressesView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.AddShippingAddressesView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.DeleteShippingAddressesView")
                elsif self.getCommand().compareTo(ShippingAddressData::SELECT) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.SelectShippingAddressesView")
                elsif self.getCommand().compareTo(ShippingAddressData::SETTOBILLINGADDRESS) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.SetShippingAddressesView")
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return super()
            end
            raise StandardError.new("Command Null")
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/system/security/licensing/LicensingException"

