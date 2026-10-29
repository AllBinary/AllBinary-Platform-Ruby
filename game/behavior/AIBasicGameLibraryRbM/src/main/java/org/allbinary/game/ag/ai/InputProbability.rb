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
# package org.allbinary.game.ag.ai


class InputProbability
    attr_accessor :likelyhoodIntegerArray, :repeatLikelyhoodIntegerArray, :max, :timeDelayHelper

    def initialize_fields
        @likelyhoodIntegerArray = nil
        @repeatLikelyhoodIntegerArray = nil
        @max = nil
        @timeDelayHelper = nil
    end
    

    def initialize(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper)
        initialize_fields
        @likelyhoodIntegerArray = likelyhoodIntegerArray
        @repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray
        @max = max
        @timeDelayHelper = timeDelayHelper
    end
    

    def getLikelyhoodIntegerArray()
        return @likelyhoodIntegerArray
    end
    

    def getRepeatLikelyhoodIntegerArray()
        return @repeatLikelyhoodIntegerArray
    end
    

    def getMax()
        return @max
    end
    

    def getTimeDelayHelper()
        return @timeDelayHelper
    end
    

    def toHashtable()
        hashtable = StdUtil.getInstance().createHashtable()
        hashtable.put(InputProbability::INPUT_PROBABILITY, self)
        return hashtable
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"

class InputProbability
    INPUT_PROBABILITY = SmallIntegerSingletonFactory.getInstance().getAt(0)
end

