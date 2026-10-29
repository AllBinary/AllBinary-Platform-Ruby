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


class CompositeGroup
    attr_accessor :logUtil, :groupInterface, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @groupInterface = nil
        @list = BasicArrayListD.new()
    end
    

    def initialize(groupInterface)
        initialize_fields
        @groupInterface = groupInterface
    end
    

    def clear()
        @list.clear()
    end
    

    def add(groupInterface)
        commonStrings = CommonStrings.getInstance()
        groupCommonFactory = GroupCommonFactory.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(groupCommonFactory.ADDING_LABEL)
        stringBuffer.append(groupInterface.to_s)
        stringBuffer.append(groupCommonFactory.TO_LABEL)
        stringBuffer.append(StringUtil.getInstance().toString(@groupInterface))
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.ADD)
        @list.add(groupInterface)
    end
    

    def isInGroup(groupInterface)
        if @list.contains(groupInterface)
            return true
        else
            return false
        end
    end
    

    def getGroup()
        return @groupInterface
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/identification/GroupCommonFactory"

