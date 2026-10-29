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
# package tags.generic.address.billing

# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class BillingAddressTag < StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.ValidationView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.EDIT) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.EditValidationView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.NEW) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.NewValidationView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.AddValidationView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.DeleteValidationView")
                elsif self.getCommand().compareTo(BillingAddressData::SELECT) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.SelectValidationView")
                elsif self.getCommand().compareTo(BillingAddressData::SETTOSHIPPINGADDRESS) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.SetValidationView")
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

require "org/allbinary/business/user/address/BillingAddressData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/system/security/licensing/LicensingException"

