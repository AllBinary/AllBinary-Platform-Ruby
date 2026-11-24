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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/dhtml/html/HtmlTag"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Table

class HtmlTable < ::Org::Allbinary::Logic::Visual::Dhtml::Html::HtmlTag
    attr_accessor :END, :START, :ENDTAG, :CLASS, :DIRECTION, :ID, :LANG, :UNITS, :BORDER, :CELLPADDING, :CELLSPACING, :COLS, :FLOAT, :FRAME, :RULES, :STYLE, :BORDERCOLLAPSE, :numberOfColumns, :before, :border, :cellpadding, :cellspacing, :style, :name, :after, :htmlRowsVector

    def jfields_org_allbinary_logic_visual_dhtml_html_table_HtmlTable
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
        @before = nil unless instance_variable_defined?(:@before)
        @border = nil unless instance_variable_defined?(:@border)
        @cellpadding = nil unless instance_variable_defined?(:@cellpadding)
        @cellspacing = nil unless instance_variable_defined?(:@cellspacing)
        @style = nil unless instance_variable_defined?(:@style)
        @name = nil unless instance_variable_defined?(:@name)
        @after = nil unless instance_variable_defined?(:@after)
        @htmlRowsVector = nil unless instance_variable_defined?(:@htmlRowsVector)
    end
    

    def initialize(before, cellpadding, cellspacing, after)
        super()
        jfields_org_allbinary_logic_visual_dhtml_html_table_HtmlTable
        @before = before
        @cellpadding = cellpadding
        @cellspacing = cellspacing
        @after = after
        @htmlRowsVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        addAttribute(@BORDER, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
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
    java_overload :addRow, 1
    

    def toString()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
autoload :HtmlRow, "org/allbinary/logic/visual/dhtml/html/table/HtmlRow" unless const_defined?(:HtmlRow, false)

end; end; end; end; end; end; end

