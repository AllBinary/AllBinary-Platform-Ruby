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
# package org.allbinary.business.time


module ::Org; module Allbinary; module Business; module TimePackage

class Time
    attr_accessor :timeLong

    def jfields_org_allbinary_business_time_Time
        @timeLong = nil unless instance_variable_defined?(:@timeLong)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_time_Time_1(*args)
        else raise ArgumentError, "No constructor of Time takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_time_Time_1(*java_overload_args)
        return jnew_org_allbinary_business_time_Time_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_business_time_Time_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_time_Time_1_1(time)
        jfields_org_allbinary_business_time_Time
        @timeLong = time
    end
    

    def jnew_org_allbinary_business_time_Time_1_2(time)
        jfields_org_allbinary_business_time_Time
        @timeLong = time
    end
    

    def getLong()
        return @timeLong
    end
    

    def getlong()
        return @timeLong.to_i
    end
    

    def toString()
        return self.getLong().to_s
    end
    alias_method :to_s, :toString
end

end; end; end; end

