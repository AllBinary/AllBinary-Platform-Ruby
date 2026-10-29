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
# package views.generic.shipping

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/shipping/ShippingMethodsView"

class ValidationView < ShippingMethodsView
    include ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
    end
    

    def isValid()
        return true
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def validationInfo()
        return MESSAGES.CONTACTADMIN
    end
end

require "org/allbinary/globals/MESSAGES"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

