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
# package org.allbinary.data.tree.dom


class DomNodeListHelper
    

    def self.getVector(nodeList)
        vector = BasicArrayListD.new()
        size = nodeList.getLength()
        (0...size).each do |index|
            vector.add(DomNodeHelper.getTextNodeValue(nodeList.item(index)))
        end
        return vector
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/w3c/dom/NodeList"
require "org/allbinary/data/tree/dom/DomNodeHelper"

