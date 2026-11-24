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
# package org.allbinary.business.init.db

require "java/lang/JavaOverload"
require "org/allbinary/business/init/db/DbInitInfo"

module ::Org; module Allbinary; module Business; module Init; module Db

class UserDbInitInfo < DbInitInfo

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_init_db_UserDbInitInfo_0(*args)
        when 1 then jnew_org_allbinary_business_init_db_UserDbInitInfo_1(*args)
        else raise ArgumentError, "No constructor of UserDbInitInfo takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_init_db_UserDbInitInfo_0()
        UserDbInitInfo.superclass.instance_method(:initialize).bind(self).call(INITFILE, true)
    end
    

    def jnew_org_allbinary_business_init_db_UserDbInitInfo_1(read)
        UserDbInitInfo.superclass.instance_method(:initialize).bind(self).call(INITFILE, read)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:INITFILE, "userdbinitdata.dat")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserDbInitInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INITFILE].include?(name)
        end
        super
    end
end

begin
    UserDbInitInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

