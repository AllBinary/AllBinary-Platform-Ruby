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
# package views.admin.payment.gateways

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class SelectExistingValidationView < HttpStoreComponentView
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
    

    # throws Exception
    def validationInfo()
        raise StandardError.new("validationInfo")
    end
    

    def toXmlDoc()
        return nil
    end
    

    def toXmlNode(document)
        return nil
    end
    

    # throws Exception
    def view()
        return SelectExistingView.new(self.getTransformInfoInterface()).view()
    end
end

autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :SelectExistingView, "views/admin/payment/gateways/SelectExistingView"

