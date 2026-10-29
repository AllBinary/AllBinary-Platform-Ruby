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


class GroupFactory
    attr_accessor :logUtil, :NULL_GROUP_ARRAY, :list, :index

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @NULL_GROUP_ARRAY = Array.new(0, nil)
        @list = BasicArrayListD.new()
        @index = 0
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GroupFactory.instance
    end
    

    def getNextGroup()
        group = @list.objectArray[@index]
        @index += 1
        return group
    end
    

    def getNextGroupByName(name)
        group = self.getNextGroup()
        group.setName(name)
        return group
    end
    

    def init(groups, nameArray)
        stringMaker = StringMaker.new()
        stringUtil = StringUtil.getInstance()
        _TEAM = "Team "
        @list.clear()
        @index = 0
        size = @list.size()
        while size < groups
            name = stringUtil.EMPTY_STRING
            if size < nameArray.length
                name = nameArray[size]
            else
                stringMaker.delete(0, stringMaker.length())
                name = stringMaker.append(_TEAM).appendint(size).to_s
            end
            @list.add(Group.new(name, ((((size + 3)).to_i + 32768) % 65536 - 32768)))
            size += 1
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/identification/Group"

class GroupFactory
    @@instance = GroupFactory.new()
end

