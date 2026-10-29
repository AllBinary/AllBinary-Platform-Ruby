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

require "org/allbinary/game/identification/GroupInterface"

class Group
    include GroupInterface
    attr_accessor :name, :teamId, :string

    def initialize_fields
        @name = StringUtil.getInstance().EMPTY_STRING
        @teamId = nil
        @string = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(teamName, teamId)
        initialize_fields
        @teamId = teamId
        self.setName(teamName)
    end
    

    def getGroupName()
        return @name
    end
    

    def setName(name)
        @name = name
        groupCommonFactory = GroupCommonFactory.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL)
        stringBuffer.append(@name)
        stringBuffer.append(groupCommonFactory.ID_LABEL)
        stringBuffer.appendshort(@teamId)
        @string = stringBuffer.to_s
    end
    

    def getGroupId()
        return @teamId
    end
    

    def toString()
        return @string
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/identification/GroupCommonFactory"

