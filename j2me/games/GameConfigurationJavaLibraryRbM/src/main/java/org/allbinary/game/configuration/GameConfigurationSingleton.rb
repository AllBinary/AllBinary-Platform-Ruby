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
# package org.allbinary.game.configuration


module ::Org; module Allbinary; module Game; module Configuration

class GameConfigurationSingleton
    attr_accessor :list, :hashtable

    def jfields_org_allbinary_game_configuration_GameConfigurationSingleton
        @list = nil unless instance_variable_defined?(:@list)
        @hashtable = nil unless instance_variable_defined?(:@hashtable)
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_game_configuration_GameConfigurationSingleton
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
    end
    

    def getInstanceByName(name)
        return @hashtable.get(name)
    end
    

    def getOptionsBasicArrayList()
        return @list
    end
    

    def add(gameConfiguration)
        @list.add(gameConfiguration)
    end
    

    def getHashtable()
        return @hashtable
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, GameConfigurationSingleton.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameConfigurationSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :GameConfiguration, "org/allbinary/game/configuration/GameConfiguration" unless const_defined?(:GameConfiguration, false)

begin
    GameConfigurationSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

