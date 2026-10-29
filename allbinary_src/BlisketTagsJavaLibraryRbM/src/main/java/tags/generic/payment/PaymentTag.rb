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
# package tags.generic.payment

# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class PaymentTag < StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setName("Basic Payment View")
            self.setObjectFile("views.generic.payment.ValidationView")
            if self.getCommand() != nil
                if self.getCommand().compareTo(PaymentData::VIEW) == 0 || self.getCommand().compareTo(PaymentData::CHANGE) == 0 || self.getCommand().compareTo(PaymentData::ADDNEW) == 0
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    return @EVAL_BODY_INCLUDE
                elsif self.getCommand().compareTo(PaymentData::SELECT) == 0
                    return @EVAL_BODY_INCLUDE
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

require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/system/security/licensing/LicensingException"

