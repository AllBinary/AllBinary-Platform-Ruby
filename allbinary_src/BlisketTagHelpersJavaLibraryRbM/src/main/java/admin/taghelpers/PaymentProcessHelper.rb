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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class PaymentProcessHelper < TagHelper
    attr_accessor :paymentProcessorComponent

    def jfields_admin_taghelpers_PaymentProcessHelper
        @paymentProcessorComponent = nil unless instance_variable_defined?(:@paymentProcessorComponent)
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        jfields_admin_taghelpers_PaymentProcessHelper
        transformInfoInterface = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttpFactory.getInstance(propertiesHashMap, pageContext)
        @paymentProcessorComponent = ::Views::Admin::Payment::PaymentProcessorComponent.new(transformInfoInterface)
    end
    

    # throws Exception
    def process()
        return @paymentProcessorComponent.view()
    end
    java_overload :process, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpFactory, "org/allbinary/logic/visual/transform/info/TransformInfoHttpFactory" unless const_defined?(:TransformInfoHttpFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Views; module Admin; module Payment; autoload :PaymentProcessorComponent, "views/admin/payment/PaymentProcessorComponent" unless const_defined?(:PaymentProcessorComponent, false); end; end; end

end; end

