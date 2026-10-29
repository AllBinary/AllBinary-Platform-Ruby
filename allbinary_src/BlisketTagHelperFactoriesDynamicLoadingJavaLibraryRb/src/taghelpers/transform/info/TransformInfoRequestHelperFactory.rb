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
# package taghelpers.transform.info

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelperFactoryInterface"

class TransformInfoRequestHelperFactory
    include TagHelperFactoryInterface
    

    def initialize()
    end
    

    # throws LicensingException
    def getInstance(hashMap, pageContext)
        return HelperFactory.getInstance(FACTORYNAME, CLASSNAME, hashMap, pageContext)
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "admin/taghelpers/HelperFactory"

class TransformInfoRequestHelperFactory
    CLASSNAME = "taghelpers.transform.info.TransformInfoRequestHelper"
    FACTORYNAME = "TransformInfoRequestHelperFactory"
end

