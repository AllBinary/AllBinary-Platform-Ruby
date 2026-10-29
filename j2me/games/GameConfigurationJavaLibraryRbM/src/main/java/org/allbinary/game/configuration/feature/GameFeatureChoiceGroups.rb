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
# package org.allbinary.game.configuration.feature


class GameFeatureChoiceGroups
    attr_accessor :hashtable

    def initialize_fields
        @hashtable = StdUtil.getInstance().createHashtable()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getExclusiveInstance()
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive
    end
    

    def self.getMultipleInstance()
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple
    end
    

    def get()
        return @hashtable
    end
    

    def add(name, list)
        @hashtable.put(name, list)
    end

    def self.gameFeatureChoiceGroupsExclusive()
        return defined?(@@gameFeatureChoiceGroupsExclusive) ? @@gameFeatureChoiceGroupsExclusive : nil
    end

    def self.gameFeatureChoiceGroupsExclusive=(value)
        @@gameFeatureChoiceGroupsExclusive = value
    end

    def self.gameFeatureChoiceGroupsMultiple()
        return defined?(@@gameFeatureChoiceGroupsMultiple) ? @@gameFeatureChoiceGroupsMultiple : nil
    end

    def self.gameFeatureChoiceGroupsMultiple=(value)
        @@gameFeatureChoiceGroupsMultiple = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"

class GameFeatureChoiceGroups
    @@gameFeatureChoiceGroupsExclusive = GameFeatureChoiceGroups.new()
    @@gameFeatureChoiceGroupsMultiple = GameFeatureChoiceGroups.new()
end

