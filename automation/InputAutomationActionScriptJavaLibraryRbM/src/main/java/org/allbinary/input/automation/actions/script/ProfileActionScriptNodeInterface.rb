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
# package org.allbinary.input.automation.actions.script

# require "javax/swing/tree/MutableTreeNode"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ProfileActionScriptNodeInterface
    include DomNodeInterface
    include MutableTreeNode
    

    def addCondition(profileActionConditionInterface)
        raise NotImplementedError
    end
    

    def removeCondition(profileActionConditionInterface)
        raise NotImplementedError
    end
end

