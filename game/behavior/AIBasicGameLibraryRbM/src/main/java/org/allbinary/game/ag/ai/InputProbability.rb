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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:INPUT_PROBABILITY, SmallIntegerSingletonFactory.getInstance().getAt(0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputProbability"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INPUT_PROBABILITY].include?(name)
        end
        super
    end
end

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    InputProbability.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

