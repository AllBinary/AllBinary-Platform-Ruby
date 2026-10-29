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


class BasicGroupFactory
    attr_accessor :NAME, :NO_SUCH_GROUP, :GOOD, :ENEMY, :ENEMY_ON_LEVEL, :NONE, :GOOD_ARRAY, :ENEMY_ARRAY, :ENEMY_ON_LEVEL_ARRAY, :NONE_ARRAY

    def initialize_fields
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
        initialize_fields
    end
    

    def self.getInstance()
        if BasicGroupFactory.instance == NullUtil.getInstance().NULL_OBJECT
            BasicGroupFactory.instance = BasicGroupFactory.new()
        end
        return BasicGroupFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/identification/Group"

class BasicGroupFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

