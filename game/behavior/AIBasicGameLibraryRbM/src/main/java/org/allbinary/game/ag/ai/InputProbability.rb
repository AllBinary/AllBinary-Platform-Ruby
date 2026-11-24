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


module ::Org; module Allbinary; module Game; module Ag; module Ai

class InputProbability
    attr_accessor :likelyhoodIntegerArray, :repeatLikelyhoodIntegerArray, :max, :timeDelayHelper

    def jfields_org_allbinary_game_ag_ai_InputProbability
        @likelyhoodIntegerArray = nil unless instance_variable_defined?(:@likelyhoodIntegerArray)
        @repeatLikelyhoodIntegerArray = nil unless instance_variable_defined?(:@repeatLikelyhoodIntegerArray)
        @max = nil unless instance_variable_defined?(:@max)
        @timeDelayHelper = nil unless instance_variable_defined?(:@timeDelayHelper)
    end
    

    def initialize(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper)
        jfields_org_allbinary_game_ag_ai_InputProbability
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
        hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        hashtable.put(InputProbability::INPUT_PROBABILITY, self)
        return hashtable
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:INPUT_PROBABILITY, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0))
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

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    InputProbability.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

