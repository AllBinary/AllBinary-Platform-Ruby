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

require "org/allbinary/input/automation/actions/script/ProfileActionScriptItemInterface"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface"
require "org/allbinary/input/automation/actions/script/condition/CustomTreeNodeInterface"

module ProfileActionScriptConditionInterface
    include ProfileActionScriptNodeInterface
    include CustomTreeNodeInterface
    include ProfileActionScriptItemInterface
    

    def addProcessor(profileActionProcessorInterface)
        raise NotImplementedError
    end
    

    def removeProcessor(profileActionProcessorInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def shouldProcess(frame)
        raise NotImplementedError
    end
end

require "org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface"

