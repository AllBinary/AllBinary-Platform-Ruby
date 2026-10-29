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

require "org/allbinary/graph/V"

class CellPosition < V
    attr_accessor :id, :column, :row

    def initialize_fields
        @id = nil
        @column = nil
        @row = nil
    end
    

    def initialize(column, row, columns, rows)
        super()
        initialize_fields
        @column = column
        @row = row
        @id = (row * columns) + column
    end
    

    def getColumn()
        return @column
    end
    

    def getRow()
        return @row
    end
    

    def toString()
        return CellPosition.toStringColRow(self.getColumn(), self.getRow())
    end
    alias_method :to_s, :toString
    

    def self.toStringCellPosition(basicGeographicMapCellPosition)
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow())
    end
    

    def self.toStringColRow(i_column, i_row)
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
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
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

