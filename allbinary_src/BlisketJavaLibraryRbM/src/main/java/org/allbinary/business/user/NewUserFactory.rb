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
# package org.allbinary.business.user

# require "javax/servlet/http/HttpServletRequest"

class NewUserFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance()
        return User.new()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(transformInfoInterface)
        httpTransformInfoInterface = transformInfoInterface
        httpServletRequest = httpTransformInfoInterface.getPageContext().getRequest()
        hashMap = RequestParams.new(httpServletRequest).toHashMap()
        role = httpTransformInfoInterface.getPropertiesHashMap().get(UserRoleData::NAME.to_s)
        hashMap.put(UserRoleData::NAME.to_s, role)
        return CreateUserFactory.getInstance(hashMap)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(httpServletRequest, propertiesHashMap)
        if propertiesHashMap != nil
            requestHashMap = RequestParams.new(httpServletRequest).toHashMap()
            roleString = propertiesHashMap.get(UserRoleData::NAME.to_s)
            requestHashMap.put(UserRoleData::NAME.to_s, roleString)
            return CreateUserFactory.getInstance(requestHashMap)
        else
            raise StandardError.new("Null HashMap")
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/modules/User"
require "org/allbinary/business/user/role/UserRoleData"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/business/user/CreateUserFactory"
require "org/allbinary/business/user/UserInterface"

