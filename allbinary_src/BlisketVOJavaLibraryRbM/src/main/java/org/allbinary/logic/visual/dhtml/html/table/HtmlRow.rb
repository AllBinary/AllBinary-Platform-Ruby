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
# package org.allbinary.logic.visual.dhtml.html.table

require "org/allbinary/logic/visual/dhtml/html/HtmlTag"

class HtmlRow < HtmlTag
    attr_accessor :END, :START, :ENDTAG, :numberOfColumns, :before, :after, :htmlCellsVector

    def initialize_fields
        @END = ">"
        @START = "<tr "
        @ENDTAG = "</tr>"
        @numberOfColumns = 0
        @before = nil
        @after = nil
        @htmlCellsVector = nil
    end
    

    def initialize(before, after)
        super()
        initialize_fields
        @before = String.new(before)
        @after = String.new(after)
        @htmlCellsVector = BasicArrayListD.new()
    end
    

    def addCell(htmlCell)
        @htmlCellsVector.add(htmlCell)
        @numberOfColumns += 1
    end
    

    def getNumberOfColumns()
        return @numberOfColumns
    end
    

    def toString()
        stringUtil = StringUtil.getInstance()
        result = stringUtil.EMPTY_STRING
        attributeKeys = @otherAttributes.keySet().toArray()
        attributeSize = attributeKeys.length
        cellSize = @htmlCellsVector.size()
        result = @before
        result += (@START).to_s
        result += (" ").to_s
        (0...attributeSize).each do |i|
            key = attributeKeys[i]
            value = @otherAttributes.get(key)
            if value != nil && (value <=> stringUtil.EMPTY_STRING) != 0
                result += (key).to_s
                result += ("=\"").to_s
                result += (value).to_s
                result += ("\" ").to_s
            end
        end
        result += (@END).to_s
        (0...cellSize).each do |i|
            result += (@htmlCellsVector.get(i).to_s).to_s
            result += (" ").to_s
        end
        result += (@ENDTAG).to_s
        result += (@after).to_s
        return result
    end
    alias_method :to_s, :toString
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/dhtml/html/table/HtmlCell"

