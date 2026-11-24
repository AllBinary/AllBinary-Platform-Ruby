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

class HtmlRow < ::Org::Allbinary::Logic::Visual::Dhtml::Html::HtmlTag
    attr_accessor :END, :START, :ENDTAG, :numberOfColumns, :before, :after, :htmlCellsVector

    def jfields_org_allbinary_logic_visual_dhtml_html_table_HtmlRow
        @END = ">"
        @START = "<tr "
        @ENDTAG = "</tr>"
        @numberOfColumns = 0
        @before = nil unless instance_variable_defined?(:@before)
        @after = nil unless instance_variable_defined?(:@after)
        @htmlCellsVector = nil unless instance_variable_defined?(:@htmlCellsVector)
    end
    

    def initialize(before, after)
        super()
        jfields_org_allbinary_logic_visual_dhtml_html_table_HtmlRow
        @before = String.new(before)
        @after = String.new(after)
        @htmlCellsVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def addCell(htmlCell)
        @htmlCellsVector.add(htmlCell)
        @numberOfColumns += 1
    end
    java_overload :addCell, 1
    

    def getNumberOfColumns()
        return @numberOfColumns
    end
    java_overload :getNumberOfColumns, 0
    

    def toString()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :HtmlCell, "org/allbinary/logic/visual/dhtml/html/table/HtmlCell" unless const_defined?(:HtmlCell, false)

end; end; end; end; end; end; end

