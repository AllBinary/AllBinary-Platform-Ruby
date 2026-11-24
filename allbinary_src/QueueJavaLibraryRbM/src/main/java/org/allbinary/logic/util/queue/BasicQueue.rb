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

module ::Org; module Allbinary; module Logic; module Util; module QueuePackage

class BasicQueue
    attr_accessor :queueVector

    def jfields_org_allbinary_logic_util_queue_BasicQueue
        @queueVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_logic_util_queue_BasicQueue
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end

