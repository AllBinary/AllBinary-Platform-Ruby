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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelperFactoryInterface"

module ::Taghelpers; module Transform; module Info

class TransformInfoRequestHelperFactory
    include ::Admin::Taghelpers::TagHelperFactoryInterface
    

    def initialize()
    end
    

    # throws LicensingException
    def getInstance(hashMap, pageContext)
        return ::Admin::Taghelpers::HelperFactory.getInstance(FACTORYNAME, CLASSNAME, hashMap, pageContext)
    end
    java_overload :getInstance, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CLASSNAME, "taghelpers.transform.info.TransformInfoRequestHelper")
        const_set(:FACTORYNAME, "TransformInfoRequestHelperFactory")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoRequestHelperFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CLASSNAME, :FACTORYNAME].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Admin; module Taghelpers; autoload :HelperFactory, "admin/taghelpers/HelperFactory" unless const_defined?(:HelperFactory, false); end; end

begin
    TransformInfoRequestHelperFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

