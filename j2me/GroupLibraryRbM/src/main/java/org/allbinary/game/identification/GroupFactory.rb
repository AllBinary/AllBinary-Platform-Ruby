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
        name = nil
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
        GroupFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GroupFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GroupFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GroupFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :Group, "org/allbinary/game/identification/Group"

begin
    GroupFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

