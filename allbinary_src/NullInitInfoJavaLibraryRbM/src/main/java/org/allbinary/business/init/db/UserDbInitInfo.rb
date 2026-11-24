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
        UserDbInitInfo.superclass.instance_method(:initialize).bind(self).call(nil, false)
    end
    

    def jnew_org_allbinary_business_init_db_UserDbInitInfo_1(read)
        UserDbInitInfo.superclass.instance_method(:initialize).bind(self).call(nil, false)
    end
end

end; end; end; end; end

