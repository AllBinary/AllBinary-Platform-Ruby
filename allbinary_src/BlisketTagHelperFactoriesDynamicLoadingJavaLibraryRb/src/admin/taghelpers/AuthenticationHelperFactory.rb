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
# require "javax/servlet/http/HttpServletRequest"

module ::Admin; module Taghelpers

class AuthenticationHelperFactory
    include TagHelperFactoryInterface
    

    def initialize()
    end
    

    # throws LicensingException
    def getInstance_j2_1(hashMap, pageContext)
        return HelperFactory.getInstance(FACTORYNAME, CLASSNAME, hashMap, pageContext)
    end
    

    # throws LicensingException
    def getInstance_j2_2(hashMap, httpServletRequest)
        return HelperFactory.getInstance(FACTORYNAME, CLASSNAME, hashMap, httpServletRequest)
    end

    def getInstance(*java_overload_args)
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j2(*java_overload_args)
        return getInstance_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array))
        return getInstance_j2_2(*java_overload_args)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CLASSNAME, "admin.taghelpers.AuthenticationHelper")
        const_set(:FACTORYNAME, "AuthenticationHelperFactory")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AuthenticationHelperFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CLASSNAME, :FACTORYNAME].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end

begin
    AuthenticationHelperFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

