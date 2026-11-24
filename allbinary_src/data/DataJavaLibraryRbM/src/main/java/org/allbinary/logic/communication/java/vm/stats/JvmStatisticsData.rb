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
# package org.allbinary.logic.communication.java.vm.stats


module ::Org; module Allbinary; module Logic; module Communication; module Java; module Vm; module Stats

class JvmStatisticsData
    

    def initialize()
        super()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:JVM_STATISTICS, "JVM_STATISTICS_")
        begin
            const_set(:NAME, (JvmStatisticsData::JVM_STATISTICS).to_s + "NAME")
            const_set(:TOTAL_MEMORY_BYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "TOTAL_MEMORY_BYTES")
            const_set(:TOTAL_MEMORY_KILOBYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "TOTAL_MEMORY_KILOBYTES")
            const_set(:TOTAL_MEMORY_MEGABYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "TOTAL_MEMORY_MEGABYTES")
            const_set(:FREE_MEMORY_BYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "FREE_MEMORY_BYTES")
            const_set(:FREE_MEMORY_KILOBYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "FREE_MEMORY_KILOBYTES")
            const_set(:FREE_MEMORY_MEGABYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "FREE_MEMORY_MEGABYTES")
            const_set(:MAX_MEMORY_BYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "MAX_MEMORY_BYTES")
            const_set(:MAX_MEMORY_KILOBYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "MAX_MEMORY_KILOBYTES")
            const_set(:MAX_MEMORY_MEGABYTES, (JvmStatisticsData::JVM_STATISTICS).to_s + "MAX_MEMORY_MEGABYTES")
            const_set(:NUMBER_OF_THREADS, (JvmStatisticsData::JVM_STATISTICS).to_s + "NUMBER_OF_THREADS")
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "JvmStatisticsData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:JVM_STATISTICS, :NAME, :TOTAL_MEMORY_BYTES, :TOTAL_MEMORY_KILOBYTES, :TOTAL_MEMORY_MEGABYTES, :FREE_MEMORY_BYTES, :FREE_MEMORY_KILOBYTES, :FREE_MEMORY_MEGABYTES, :MAX_MEMORY_BYTES, :MAX_MEMORY_KILOBYTES, :MAX_MEMORY_MEGABYTES, :NUMBER_OF_THREADS].include?(name)
        end
        super
    end
end

begin
    JvmStatisticsData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

