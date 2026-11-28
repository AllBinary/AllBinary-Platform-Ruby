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
# package org.allbinary.game.identification


module ::Org; module Allbinary; module Game; module Identification

class BasicGroupFactory
    attr_accessor :NAME, :NO_SUCH_GROUP, :GOOD, :ENEMY, :ENEMY_ON_LEVEL, :NONE, :GOOD_ARRAY, :ENEMY_ARRAY, :ENEMY_ON_LEVEL_ARRAY, :NONE_ARRAY

    def jfields_org_allbinary_game_identification_BasicGroupFactory
        @NAME = "GROUP_NAME"
        @NO_SUCH_GROUP = "No Such Group: "
        @GOOD = Group.new("Good Guys", (((0).to_i + 32768) % 65536 - 32768))
        @ENEMY = Group.new("Bad Guys", (((1).to_i + 32768) % 65536 - 32768))
        @ENEMY_ON_LEVEL = Group.new("Bad Guys on Level", (((2).to_i + 32768) % 65536 - 32768))
        @NONE = Group.new("Not On A Team", (((3).to_i + 32768) % 65536 - 32768))
        @GOOD_ARRAY = [@GOOD]
        @ENEMY_ARRAY = [@ENEMY]
        @ENEMY_ON_LEVEL_ARRAY = [@ENEMY, @ENEMY_ON_LEVEL]
        @NONE_ARRAY = [@NONE]
    end

    def initialize
        jfields_org_allbinary_game_identification_BasicGroupFactory
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = BasicGroupFactory.new()
        end
        return @@instance
    end

    def self.instance()
        BasicGroupFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicGroupFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicGroupFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false)

begin
    BasicGroupFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

