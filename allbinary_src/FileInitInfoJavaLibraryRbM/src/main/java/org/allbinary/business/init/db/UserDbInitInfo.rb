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

require "org/allbinary/business/init/db/DbInitInfo"

class UserDbInitInfo < DbInitInfo

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call(INITFILE, true)
    end
    

    def constructor1(read)
        method(:initialize).super_method.call(INITFILE, read)
    end
end

class UserDbInitInfo
    INITFILE = "userdbinitdata.dat"
end

