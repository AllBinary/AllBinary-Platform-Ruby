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
# package org.allbinary.graphics.j2me.workarea


class WorkAreaDom
    attr_accessor :name, :canvasNodeList

    def initialize_fields
        @name = nil
        @canvasNodeList = nil
    end
    

    def initialize(document)
        initialize_fields
        workAreaNodeList = document.getElementsByTagName(WORKAREA)
        if workAreaNodeList != nil
            numberOfworkAreas = workAreaNodeList.getLength()
            if numberOfworkAreas == 1
                numberOfNodes = workAreaNodeList.getLength()
                nameNode = DomHelper.getInstance().searchNodeList(NAME, workAreaNodeList.item(0).getChildNodes())
                nameTextNode = nameNode.getFirstChild()
                @name = nameTextNode.getNodeValue()
            else
                raise StandardError.new("Wrong Number of WorkAreas: " + (numberOfworkAreas).to_s)
            end
            @canvasNodeList = DomHelper.getInstance().getChildrenWithoutTextNodes(WorkAreaDom::FRAMES, workAreaNodeList.item(0).getChildNodes())
        else
            raise StandardError.new("workArea Node Not Found")
        end
    end
    

    def getName()
        return @name
    end
    

    def getCanvasNodes()
        return @canvasNodeList
    end
end

require "org/allbinary/dom/DomHelper"
require "org/allbinary/util/BasicArrayList"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

class WorkAreaDom
    WORKAREA = "workArea"
    NAME = "name"
    FRAMES = "frames"
end

