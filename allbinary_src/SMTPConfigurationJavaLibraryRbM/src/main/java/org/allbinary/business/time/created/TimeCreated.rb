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
# package org.allbinary.business.time.created

require "java/lang/JavaOverload"
require "org/allbinary/business/time/Time"

module ::Org; module Allbinary; module Business; module TimePackage; module Created

class TimeCreated < ::Org::Allbinary::Business::TimePackage::Time

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_time_created_TimeCreated_1(*args)
        else raise ArgumentError, "No constructor of TimeCreated takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_time_created_TimeCreated_1(*java_overload_args)
        return jnew_org_allbinary_business_time_created_TimeCreated_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_business_time_created_TimeCreated_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_time_created_TimeCreated_1_1(time)
        TimeCreated.superclass.instance_method(:initialize).bind(self).call(Integer(time))
    end
    

    def jnew_org_allbinary_business_time_created_TimeCreated_1_2(time)
        TimeCreated.superclass.instance_method(:initialize).bind(self).call(time)
    end
end

end; end; end; end; end

