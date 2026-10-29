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

require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/communication/java/vm/stats/JvmStatistics"

class JvmStatisticsMapping < JvmStatistics
    include TableMappingInterface
    

    def initialize()
        super()
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(JvmStatisticsData::FREE_MEMORY_BYTES, self.getFreeMemoryBytesString())
        hashMap.put(JvmStatisticsData::FREE_MEMORY_KILOBYTES, self.getFreeMemoryKilobytesString())
        hashMap.put(JvmStatisticsData::FREE_MEMORY_MEGABYTES, self.getFreeMemoryMegabytesString())
        hashMap.put(JvmStatisticsData::MAX_MEMORY_BYTES, self.getMaxMemoryBytesString())
        hashMap.put(JvmStatisticsData::MAX_MEMORY_KILOBYTES, self.getMaxMemoryKilobytesString())
        hashMap.put(JvmStatisticsData::MAX_MEMORY_MEGABYTES, self.getMaxMemoryMegabytesString())
        hashMap.put(JvmStatisticsData::NUMBER_OF_THREADS, self.getNumberOfThreadsString())
        hashMap.put(JvmStatisticsData::TOTAL_MEMORY_BYTES, self.getTotalMemoryBytesString())
        hashMap.put(JvmStatisticsData::TOTAL_MEMORY_KILOBYTES, self.getTotalMemoryKilobytesString())
        hashMap.put(JvmStatisticsData::TOTAL_MEMORY_MEGABYTES, self.getTotalMemoryMegabytesString())
        return hashMap
    end
    

    # throws Exception
    def getKey()
        return JvmStatisticsData::NAME
    end
    

    # throws Exception
    def toVector()
        vector = BasicArrayListD.new()
        vector.add(self.getFreeMemoryBytesString())
        vector.add(self.getFreeMemoryKilobytesString())
        vector.add(self.getFreeMemoryMegabytesString())
        vector.add(self.getMaxMemoryBytesString())
        vector.add(self.getMaxMemoryKilobytesString())
        vector.add(self.getMaxMemoryMegabytesString())
        vector.add(self.getNumberOfThreadsString())
        vector.add(self.getTotalMemoryBytesString())
        vector.add(self.getTotalMemoryKilobytesString())
        vector.add(self.getTotalMemoryMegabytesString())
        return vector
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/java/vm/stats/JvmStatisticsData"

