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
# package org.allbinary.logic.system.hardware.components.linux


class CpuInfo
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(name)
        initialize_fields
        @name = name
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

class CpuInfo
    PROCESSOR = CpuInfo.new("processor")
    VENDORID = CpuInfo.new("vendor_id")
    CPUFAMILY = CpuInfo.new("cpu family")
    MODEL = CpuInfo.new("model")
    MODELNAME = CpuInfo.new("model name")
    STEPPING = CpuInfo.new("stepping")
    CPUMHZ = CpuInfo.new("cpu MHz")
    CACHESIZE = CpuInfo.new("cache size")
    FDIVBUG = CpuInfo.new("fdiv_bug")
    HLTBUG = CpuInfo.new("hlt_bug")
    F00FBUG = CpuInfo.new("f00f_bug")
    COMABUG = CpuInfo.new("coma_bug")
    FPU = CpuInfo.new("fpu")
    FPUEXCEPTION = CpuInfo.new("fpu_exception")
    CPUIDLEVEL = CpuInfo.new("cache size")
    WP = CpuInfo.new("yes")
    FLAGS = CpuInfo.new("flags")
    BOGOMIPS = CpuInfo.new("bogomips")
end

