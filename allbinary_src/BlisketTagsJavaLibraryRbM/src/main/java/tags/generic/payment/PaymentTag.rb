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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

module ::Tags; module Generic; module Payment

class PaymentTag < ::Tags::StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setName("Basic Payment View")
            self.setObjectFile("views.generic.payment.ValidationView")
            if self.getCommand() != nil
                if self.getCommand().compareTo(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::VIEW) == 0 || self.getCommand().compareTo(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::CHANGE) == 0 || self.getCommand().compareTo(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::ADDNEW) == 0
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    return @EVAL_BODY_INCLUDE
                elsif self.getCommand().compareTo(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::SELECT) == 0
                    return @EVAL_BODY_INCLUDE
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return PaymentTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
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

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end

end; end; end

