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

class TaxAddressTag < StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.TaxValidationView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.NEW) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.NewValidationView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.AddTaxValidationView")
                elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                    self.setName("Basic Shipping Address View")
                    self.setObjectFile("views.generic.address.shipping.UpdateTaxValidationView")
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

require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/system/security/licensing/LicensingException"

