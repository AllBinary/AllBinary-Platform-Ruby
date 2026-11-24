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

require "java/lang/JavaOverload"
require "org/allbinary/game/identification/GroupInterface"

module ::Org; module Allbinary; module Game; module Identification

class Group
    include GroupInterface
    attr_accessor :name, :teamId, :string

    def jfields_org_allbinary_game_identification_Group
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @teamId = nil unless instance_variable_defined?(:@teamId)
        @string = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(teamName, teamId)
        jfields_org_allbinary_game_identification_Group
        @teamId = teamId
        self.setName(teamName)
    end
    

    def getGroupName()
        return @name
    end
    java_overload :getGroupName, 0
    

    def setName(name)
        @name = name
        groupCommonFactory = GroupCommonFactory.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL)
        stringBuffer.append(@name)
        stringBuffer.append(groupCommonFactory.ID_LABEL)
        stringBuffer.appendshort(@teamId)
        @string = stringBuffer.to_s
    end
    java_overload :setName, 1
    

    def getGroupId()
        return @teamId
    end
    java_overload :getGroupId, 0
    

    def toString()
        return @string
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :GroupCommonFactory, "org/allbinary/game/identification/GroupCommonFactory" unless const_defined?(:GroupCommonFactory, false)

end; end; end; end

