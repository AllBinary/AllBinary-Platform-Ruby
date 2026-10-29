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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

class PaymentProcessHelper < TagHelper
    attr_accessor :paymentProcessorComponent

    def initialize_fields
        @paymentProcessorComponent = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        initialize_fields
        transformInfoInterface = TransformInfoHttpFactory.getInstance(propertiesHashMap, pageContext)
        @paymentProcessorComponent = PaymentProcessorComponent.new(transformInfoInterface)
    end
    

    # throws Exception
    def process()
        return @paymentProcessorComponent.view()
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "views/admin/payment/PaymentProcessorComponent"

