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
# package org.allbinary.input.automation.actions.script.condition


class ProfileActionScriptConditionFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        profileActionScriptConditionInterface = nil
        if DomSearchHelper.getNodeNoThrow(ColorAtActionScriptConditionData::NAME, node.getChildNodes()) != nil
            profileActionScriptConditionInterface = ColorAtActionScriptCondition.new(node)
        elsif DomSearchHelper.getNodeNoThrow(TimeIntervalActionScriptConditionData::NAME, node.getChildNodes()) != nil
            profileActionScriptConditionInterface = TimeIntervalActionScriptCondition.new(node)
        elsif DomSearchHelper.getNodeNoThrow(AlwaysActionScriptConditionData::NAME, node.getChildNodes()) != nil
            profileActionScriptConditionInterface = AlwaysActionScriptCondition.new(node)
        end
        return profileActionScriptConditionInterface
    end
end

require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionData"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionData"
require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface"
require "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionData"

