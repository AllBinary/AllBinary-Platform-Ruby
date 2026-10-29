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
# package org.allbinary.input.automation.module.generic.configuration.profile.actions

require "org/allbinary/data/tree/dom/DomNodeInterface"

class GenericProfileAction
    include DomNodeInterface
    attr_accessor :logUtil, :name, :genericProfileActionScript, :genericProfileActionJPanel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @name = nil
        @genericProfileActionScript = nil
        @genericProfileActionJPanel = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(genericProfileActionJPanel, node)
        initialize_fields
        actionNameNode = DomSearchHelper.getNode(GenericProfileActionData::NAME, node.getChildNodes())
        if actionNameNode != nil
            @name = DomNodeHelper.getTextNodeValue(actionNameNode)
        else
            raise StandardError.new("Profile Action Name Node Null")
        end
        self.setGenericProfileActionScript(GenericProfileActionScript.new(@genericProfileActionJPanel, node))
    end
    

    def constructor1(name)
        initialize_fields
        @name = name
        self.setGenericProfileActionScript(GenericProfileActionScript.new(@genericProfileActionJPanel))
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(GenericProfileActionData::NAME, @name)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNodeWithValueNodes(document, GenericProfileActionData::NAME, self.toHashMap())
        node.appendChild(getGenericProfileActionScript().toXmlNode(document))
        return node
    end
    

    def getGenericProfileActionScript()
        return @genericProfileActionScript
    end
    

    def setGenericProfileActionScript(genericProfileActionScript)
        @genericProfileActionScript = genericProfileActionScript
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel"

