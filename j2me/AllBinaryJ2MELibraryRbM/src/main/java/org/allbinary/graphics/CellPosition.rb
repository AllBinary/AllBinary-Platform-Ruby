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
# package org.allbinary.graphics

require "java/lang/JavaOverload"
require "org/allbinary/graph/V"

module ::Org; module Allbinary; module Graphics

class CellPosition < ::Org::Allbinary::Graph::V
    attr_accessor :id, :column, :row

    def jfields_org_allbinary_graphics_CellPosition
        @id = nil unless instance_variable_defined?(:@id)
        @column = nil unless instance_variable_defined?(:@column)
        @row = nil unless instance_variable_defined?(:@row)
    end
    

    def initialize(column, row, columns, rows)
        super()
        jfields_org_allbinary_graphics_CellPosition
        @column = column
        @row = row
        @id = (row * columns) + column
    end
    

    def getColumn()
        return @column
    end
    java_overload :getColumn, 0
    

    def getRow()
        return @row
    end
    java_overload :getRow, 0
    

    def toString()
        return CellPosition.toStringColRow(self.getColumn(), self.getRow())
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def self.toStringCellPosition(basicGeographicMapCellPosition)
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow())
    end
    

    def self.toStringColRow(i_column, i_row)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN)
        stringBuffer.appendint(i_column)
        stringBuffer.append(commonSeps.COMMA)
        stringBuffer.appendint(i_row)
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE)
        return stringBuffer.to_s
    end
    

    def getId()
        return @id
    end
    java_overload :getId, 0
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end

