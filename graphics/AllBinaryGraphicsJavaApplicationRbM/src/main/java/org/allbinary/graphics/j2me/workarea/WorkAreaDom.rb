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


module ::Org; module Allbinary; module Graphics; module J2me; module Workarea

class WorkAreaDom
    attr_accessor :name, :canvasNodeList

    def jfields_org_allbinary_graphics_j2me_workarea_WorkAreaDom
        @name = nil unless instance_variable_defined?(:@name)
        @canvasNodeList = nil unless instance_variable_defined?(:@canvasNodeList)
    end
    

    def initialize(document)
        jfields_org_allbinary_graphics_j2me_workarea_WorkAreaDom
        workAreaNodeList = document.getElementsByTagName(WORKAREA)
        if workAreaNodeList != nil
            numberOfworkAreas = workAreaNodeList.getLength()
            if numberOfworkAreas == 1
                numberOfNodes = workAreaNodeList.getLength()
                nameNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(NAME, workAreaNodeList.item(0).getChildNodes())
                nameTextNode = nameNode.getFirstChild()
                @name = nameTextNode.getNodeValue()
            else
                raise StandardError.new("Wrong Number of WorkAreas: " + (numberOfworkAreas).to_s)
            end
            @canvasNodeList = ::Org::Allbinary::Dom::DomHelper.getInstance().getChildrenWithoutTextNodes(WorkAreaDom::FRAMES, workAreaNodeList.item(0).getChildNodes())
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:WORKAREA, "workArea")
        const_set(:NAME, "name")
        const_set(:FRAMES, "frames")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WorkAreaDom"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:WORKAREA, :NAME, :FRAMES].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Dom; autoload :DomHelper, "org/allbinary/dom/DomHelper" unless const_defined?(:DomHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end

begin
    WorkAreaDom.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

