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
# package org.allbinary.logic.system.security.licensing


class LicensingException < StandardError

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
    end
    

    def constructor1(msg)
        method(:initialize).super_method.call(msg)
    end

    def self.serialVersionUID()
        return defined?(@@serialVersionUID) ? @@serialVersionUID : nil
    end

    def self.serialVersionUID=(value)
        @@serialVersionUID = value
    end
end

class LicensingException
    @@serialVersionUID = 1
end

