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

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/communication/java/vm/stats/JvmStatistics"

module ::Org; module Allbinary; module Logic; module Communication; module Java; module Vm; module Stats

class JvmStatisticsMapping < JvmStatistics
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    

    def initialize()
        super()
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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
    java_overload :toHashMap, 0
    

    # throws Exception
    def getKey()
        return JvmStatisticsData::NAME
    end
    java_overload :getKey, 0
    

    # throws Exception
    def toVector()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :toVector, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :JvmStatisticsData, "org/allbinary/logic/communication/java/vm/stats/JvmStatisticsData" unless const_defined?(:JvmStatisticsData, false)

end; end; end; end; end; end; end

