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
# require "javax/servlet/http/HttpServletRequest"

class AuthenticationRequestHelperFactory
    include TagHelperFactoryInterface
    

    def initialize()
    end
    

    # throws LicensingException
    def getInstance(hashMap, pageContext)
        return HelperFactory.getInstance(AuthenticationRequestHelperFactory::FACTORYNAME, AuthenticationRequestHelperFactory::CLASSNAME, hashMap, pageContext)
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(hashMap, httpServletRequest)
        return HelperFactory.getInstance(AuthenticationRequestHelperFactory::FACTORYNAME, AuthenticationRequestHelperFactory::CLASSNAME, hashMap, httpServletRequest)
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/system/security/licensing/LicensingException"

class AuthenticationRequestHelperFactory
    CLASSNAME = "admin.taghelpers.AuthenticationRequestHelper"
    FACTORYNAME = "AuthenticationRequestHelperFactory"
end

