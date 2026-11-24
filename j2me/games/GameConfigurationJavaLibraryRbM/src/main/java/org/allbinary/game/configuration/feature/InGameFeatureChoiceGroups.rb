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


module ::Org; module Allbinary; module Game; module Configuration; module Feature

class InGameFeatureChoiceGroups
    attr_accessor :hashtable

    def jfields_org_allbinary_game_configuration_feature_InGameFeatureChoiceGroups
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
    end
    

    def initialize()
        jfields_org_allbinary_game_configuration_feature_InGameFeatureChoiceGroups
    end
    

    def self.getExclusiveInstance()
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive
    end
    

    def self.getMultipleInstance()
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple
    end
    

    def get()
        return @hashtable
    end
    

    def add(name, list)
        @hashtable.put(name, list)
    end

    def self.gameFeatureChoiceGroupsExclusive()
        InGameFeatureChoiceGroups.java_static_fields unless @java_static_fields_started
        return defined?(@@gameFeatureChoiceGroupsExclusive) ? @@gameFeatureChoiceGroupsExclusive : nil
    end

    def self.gameFeatureChoiceGroupsExclusive=(value)
        InGameFeatureChoiceGroups.java_static_fields unless @java_static_fields_started
        @@gameFeatureChoiceGroupsExclusive = value
    end

    def self.gameFeatureChoiceGroupsMultiple()
        InGameFeatureChoiceGroups.java_static_fields unless @java_static_fields_started
        return defined?(@@gameFeatureChoiceGroupsMultiple) ? @@gameFeatureChoiceGroupsMultiple : nil
    end

    def self.gameFeatureChoiceGroupsMultiple=(value)
        InGameFeatureChoiceGroups.java_static_fields unless @java_static_fields_started
        @@gameFeatureChoiceGroupsMultiple = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@gameFeatureChoiceGroupsExclusive = InGameFeatureChoiceGroups.new()
            @@gameFeatureChoiceGroupsMultiple = InGameFeatureChoiceGroups.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InGameFeatureChoiceGroups"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    InGameFeatureChoiceGroups.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

