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
# package org.allbinary.logic.communication.java.vm.stats

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/communication/java/vm/stats/JvmStatisticsMapping"

class JvmStatisticsView < JvmStatisticsMapping
    include DomNodeInterface
    

    def initialize()
        super()
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, JvmStatisticsData::NAME, hashMap)
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/java/vm/stats/JvmStatisticsData"

