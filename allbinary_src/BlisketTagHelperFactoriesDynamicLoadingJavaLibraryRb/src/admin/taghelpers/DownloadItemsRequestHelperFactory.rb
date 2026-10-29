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

class DownloadItemsRequestHelperFactory
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

class DownloadItemsRequestHelperFactory
    CLASSNAME = "admin.taghelpers.DownloadItemsRequestHelper"
    FACTORYNAME = "DownloadItemsRequestHelperFactory"
end

