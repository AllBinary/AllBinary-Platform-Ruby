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

autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :Node, "org/w3c/dom/Node"
autoload :AlwaysActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition"
autoload :AlwaysActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionData"
autoload :ColorAtActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition"
autoload :ColorAtActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionData"
autoload :ProfileActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface"
autoload :TimeIntervalActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition"
autoload :TimeIntervalActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionData"

