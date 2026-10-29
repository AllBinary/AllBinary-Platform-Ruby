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
# package org.allbinary.logic.util.queue

require "java/lang/Object"

class BasicQueue
    attr_accessor :queueVector

    def initialize_fields
        @queueVector = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def offer(anyType)
        java_monitor.synchronize do
        @queueVector.add(anyType)
        return true
        end
    end
    

    def remove(anyType)
        java_monitor.synchronize do
        @queueVector.remove(anyType)
        end
    end
    

    def removeLast()
        java_monitor.synchronize do
        anyType = @queueVector.get(@queueVector.size() - 1)
        @queueVector.remove(anyType)
        return anyType
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

