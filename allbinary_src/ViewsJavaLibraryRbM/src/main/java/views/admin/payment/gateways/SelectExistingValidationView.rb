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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Payment; module Gateways

class SelectExistingValidationView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
    end
    

    def isValid()
        return true
    end
    java_overload :isValid, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def validationInfo()
        raise StandardError.new("validationInfo")
    end
    java_overload :validationInfo, 0
    

    def toXmlDoc()
        return nil
    end
    java_overload :toXmlDoc, 0
    

    def toXmlNode(document)
        return nil
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def view()
        return SelectExistingView.new(self.getTransformInfoInterface()).view()
    end
    java_overload :view, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return SelectExistingValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :SelectExistingView, "views/admin/payment/gateways/SelectExistingView" unless const_defined?(:SelectExistingView, false)

end; end; end; end

