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
# package workflows.template.data

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/control/workflow/StoreWorkFlowInterface"
require "workflows/template/data/BasicWorkFlow"

module ::Workflows; module Template; module DataPackage

class BasicStoreWorkFlow < BasicWorkFlow
    include ::Org::Allbinary::Logic::ControlPackage::Workflow::StoreWorkFlowInterface
    

    def initialize(propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
    end
    

    # throws Exception
    def getStoreName()
        return self.getPropertiesHashMap().get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
    end
    java_overload :getStoreName, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end

end; end; end

