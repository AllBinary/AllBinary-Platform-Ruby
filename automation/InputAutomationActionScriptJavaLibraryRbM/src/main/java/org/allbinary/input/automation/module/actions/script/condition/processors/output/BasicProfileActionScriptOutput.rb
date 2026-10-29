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

require "org/allbinary/input/automation/actions/script/condition/processors/BasicProfileActionScriptProcessor"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface"

class BasicProfileActionScriptOutput < BasicProfileActionScriptProcessor
    include ProfileActionScriptOutputInterface

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(label, node)
        method(:initialize).super_method.call(label, node)
    end
    

    def constructor1(label)
        method(:initialize).super_method.call(label)
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionScriptOutputData::NAME)
        return node
    end
end

require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/GenericProfileActionScriptOutputData"

