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
# package taghelpers

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelperFactoryInterface"

class StoreTagWorkFlowHelperFactory
    include TagHelperFactoryInterface
    

    def initialize()
    end
    

    # throws Exception, LicensingException
    def getInstance(propertiesHashMap, pageContext)
        return HelperFactory.getInstance(FACTORYNAME, CLASSNAME, propertiesHashMap, pageContext)
    end
end

require "java/util/HashMap"
require "admin/taghelpers/HelperFactory"
require "org/allbinary/logic/system/security/licensing/LicensingException"

class StoreTagWorkFlowHelperFactory
    CLASSNAME = "taghelpers.StoreTagWorkFlowHelper"
    FACTORYNAME = "taghelpers.StoreTagWorkFlowHelperFactory"
end

