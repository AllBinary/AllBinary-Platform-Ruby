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
# package views.generic.address.shipping

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/address/shipping/ShippingAddressView"

class NewValidationView < ShippingAddressView
    include ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
    end
    

    def isValid()
        @streetAddress = StreetAddress.new()
        return true
    end
    

    def validationInfo()
        return "Please contact the administrator."
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

