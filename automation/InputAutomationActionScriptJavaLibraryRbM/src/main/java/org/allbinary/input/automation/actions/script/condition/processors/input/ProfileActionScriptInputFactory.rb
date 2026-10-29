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
# package org.allbinary.input.automation.actions.script.condition.processors.input


class ProfileActionScriptInputFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        profileActionScriptInputInterface = nil
        if DomSearchHelper.getNodeNoThrow(KeyboardActionScriptInputData::NAME, node.getChildNodes()) != nil
            profileActionScriptInputInterface = KeyboardActionScriptInput.new(node)
        elsif DomSearchHelper.getNodeNoThrow(MouseActionScriptInputData::NAME, node.getChildNodes()) != nil
            profileActionScriptInputInterface = MouseActionScriptInput.new(node)
        else
            raise StandardError.new("No Such ActionScript Input")
        end
        return profileActionScriptInputInterface
    end
end

require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputData"
require "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInput"
require "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputData"
require "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface"

