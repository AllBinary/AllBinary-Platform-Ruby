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


class BasicProfileActionScriptOutputNode

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(node)
        actionNode = DomSearchHelper.getNode(GenericProfileActionScriptOutputData::NAME, node.getChildNodes())
    end
    

    def constructor0()
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionScriptOutputData::NAME)
        return node
    end
end

require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/GenericProfileActionScriptOutputData"

