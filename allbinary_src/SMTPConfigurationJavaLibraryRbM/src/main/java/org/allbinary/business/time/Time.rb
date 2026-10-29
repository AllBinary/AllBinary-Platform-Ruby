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


class Time
    attr_accessor :timeLong

    def initialize_fields
        @timeLong = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(time)
        initialize_fields
        @timeLong = time
    end
    

    def constructor1(time)
        initialize_fields
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

