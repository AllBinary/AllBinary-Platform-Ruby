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

module ::Org; module Allbinary; module Business; module User

class NewUserFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance_j0()
        return ::Org::Allbinary::Business::User::Modules::User.new()
    end
    

    # throws Exception
    def self.getInstance_j1(transformInfoInterface)
        httpTransformInfoInterface = transformInfoInterface
        httpServletRequest = httpTransformInfoInterface.getPageContext().getRequest()
        hashMap = ::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(httpServletRequest).toHashMap()
        role = httpTransformInfoInterface.getPropertiesHashMap().get(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s)
        hashMap.put(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s, role)
        return CreateUserFactory.getInstance(hashMap)
    end
    

    # throws Exception
    def self.getInstance_j2(httpServletRequest, propertiesHashMap)
        if propertiesHashMap != nil
            requestHashMap = ::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(httpServletRequest).toHashMap()
            roleString = propertiesHashMap.get(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s)
            requestHashMap.put(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s, roleString)
            return CreateUserFactory.getInstance(requestHashMap)
        else
            raise StandardError.new("Null HashMap")
        end
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j0(*java_overload_args) if java_overload_args.length == 0
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Modules; autoload :User, "org/allbinary/business/user/modules/User" unless const_defined?(:User, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData" unless const_defined?(:UserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
autoload :CreateUserFactory, "org/allbinary/business/user/CreateUserFactory" unless const_defined?(:CreateUserFactory, false)
autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false)

end; end; end; end

