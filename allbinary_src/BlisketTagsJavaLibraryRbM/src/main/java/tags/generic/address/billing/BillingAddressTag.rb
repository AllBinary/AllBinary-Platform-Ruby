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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

module ::Tags; module Generic; module Address; module Billing

class BillingAddressTag < ::Tags::StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::VIEW) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.ValidationView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::EDIT) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.EditValidationView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::NEW) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.NewValidationView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.AddValidationView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.DeleteValidationView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Business::User::Address::BillingAddressData::SELECT) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.SelectValidationView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Business::User::Address::BillingAddressData::SETTOSHIPPINGADDRESS) == 0
                    self.setName("Basic Billing Address View")
                    self.setObjectFile("views.generic.address.billing.SetValidationView")
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return BillingAddressTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
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

module ::Org; module Allbinary; module Business; module User; module Address; autoload :BillingAddressData, "org/allbinary/business/user/address/BillingAddressData" unless const_defined?(:BillingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end

end; end; end; end

