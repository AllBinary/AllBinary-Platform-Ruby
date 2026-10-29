# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.math


class J2SEMath
    

    def self.getInstance()
        return J2SEMath.instance
    end
    

    def round(value)
        return (value).to_i
    end
    

    def abs(value)
        return ((value < 0.0) ? -value : value)
    end
    

    def absdouble(value)
        return ((value < 0.0) ? -value : value)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class J2SEMath
    @@instance = J2SEMath.new()
end

