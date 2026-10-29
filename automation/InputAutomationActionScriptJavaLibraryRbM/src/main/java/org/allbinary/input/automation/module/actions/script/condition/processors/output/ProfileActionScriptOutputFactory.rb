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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output


class ProfileActionScriptOutputFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        profileActionScriptOutputInterface = nil
        if DomSearchHelper.getNodeNoThrow(ImageActionScriptOutputData::NAME, node.getChildNodes()) != nil
            profileActionScriptOutputInterface = ImageActionScriptOutput.new(node)
        else
            raise StandardError.new("No Such ActionScript Output")
        end
        return profileActionScriptOutputInterface
    end
end

require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutput"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface"

