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

class HtmlTable < HtmlTag
    attr_accessor :END, :START, :ENDTAG, :CLASS, :DIRECTION, :ID, :LANG, :UNITS, :BORDER, :CELLPADDING, :CELLSPACING, :COLS, :FLOAT, :FRAME, :RULES, :STYLE, :BORDERCOLLAPSE, :numberOfColumns, :before, :border, :cellpadding, :cellspacing, :style, :name, :after, :htmlRowsVector

    def initialize_fields
        @END = ">"
        @START = "<table "
        @ENDTAG = "</table>"
        @CLASS = "class"
        @DIRECTION = "dir"
        @ID = "id"
        @LANG = "lang"
        @UNITS = "units"
        @BORDER = "border"
        @CELLPADDING = "cellpadding"
        @CELLSPACING = "cellspacing"
        @COLS = "cols"
        @FLOAT = "float"
        @FRAME = "frame"
        @RULES = "rules"
        @STYLE = "style"
        @BORDERCOLLAPSE = "border-collapse: collapse"
        @numberOfColumns = 0
        @before = nil
        @border = nil
        @cellpadding = nil
        @cellspacing = nil
        @style = nil
        @name = nil
        @after = nil
        @htmlRowsVector = nil
    end
    

    def initialize(before, cellpadding, cellspacing, after)
        super()
        initialize_fields
        @before = before
        @cellpadding = cellpadding
        @cellspacing = cellspacing
        @after = after
        @htmlRowsVector = BasicArrayListD.new()
        addAttribute(@BORDER, CommonPhoneStrings.getInstance().ZERO)
        addAttribute(@CELLPADDING, @cellpadding)
        addAttribute(@CELLSPACING, @cellspacing)
        addAttribute(@STYLE, @BORDERCOLLAPSE)
    end
    

    def addRow(htmlRow)
        if @numberOfColumns < htmlRow.getNumberOfColumns()
            @numberOfColumns = htmlRow.getNumberOfColumns()
        end
        @htmlRowsVector.add(htmlRow)
    end
    

    def toString()
        stringUtil = StringUtil.getInstance()
        result = stringUtil.EMPTY_STRING
        attributeKeys = @otherAttributes.keySet().toArray()
        result = @before
        result += (@START).to_s
        result += (" ").to_s
        (0...attributeKeys.length).each do |i|
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
        size = @htmlRowsVector.size()
        (0...size).each do |i|
            result += (@htmlRowsVector.get(i).to_s).to_s
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
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/logic/visual/dhtml/html/table/HtmlRow"

