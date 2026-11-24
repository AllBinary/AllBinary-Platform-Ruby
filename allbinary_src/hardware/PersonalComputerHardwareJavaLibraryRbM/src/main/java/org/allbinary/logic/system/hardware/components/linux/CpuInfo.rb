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


module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux

class CpuInfo
    attr_accessor :name

    def jfields_org_allbinary_logic_system_hardware_components_linux_CpuInfo
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(name)
        jfields_org_allbinary_logic_system_hardware_components_linux_CpuInfo
        @name = name
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:PROCESSOR, CpuInfo.new("processor"))
            const_set(:VENDORID, CpuInfo.new("vendor_id"))
            const_set(:CPUFAMILY, CpuInfo.new("cpu family"))
            const_set(:MODEL, CpuInfo.new("model"))
            const_set(:MODELNAME, CpuInfo.new("model name"))
            const_set(:STEPPING, CpuInfo.new("stepping"))
            const_set(:CPUMHZ, CpuInfo.new("cpu MHz"))
            const_set(:CACHESIZE, CpuInfo.new("cache size"))
            const_set(:FDIVBUG, CpuInfo.new("fdiv_bug"))
            const_set(:HLTBUG, CpuInfo.new("hlt_bug"))
            const_set(:F00FBUG, CpuInfo.new("f00f_bug"))
            const_set(:COMABUG, CpuInfo.new("coma_bug"))
            const_set(:FPU, CpuInfo.new("fpu"))
            const_set(:FPUEXCEPTION, CpuInfo.new("fpu_exception"))
            const_set(:CPUIDLEVEL, CpuInfo.new("cache size"))
            const_set(:WP, CpuInfo.new("yes"))
            const_set(:FLAGS, CpuInfo.new("flags"))
            const_set(:BOGOMIPS, CpuInfo.new("bogomips"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CpuInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PROCESSOR, :VENDORID, :CPUFAMILY, :MODEL, :MODELNAME, :STEPPING, :CPUMHZ, :CACHESIZE, :FDIVBUG, :HLTBUG, :F00FBUG, :COMABUG, :FPU, :FPUEXCEPTION, :CPUIDLEVEL, :WP, :FLAGS, :BOGOMIPS].include?(name)
        end
        super
    end
end

begin
    CpuInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

