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


class CellPositionFactory
    attr_accessor :logUtil, :NONE, :cellPositionArray, :columns, :rows

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @NONE = CellPosition.new(-1, -1, -1, -1)
        @cellPositionArray = Array.new(0) { Array.new(0, nil) }
        @columns = 0
        @rows = 0
    end
    

    def self.getInstance()
        return CellPositionFactory::SINGLETON
    end
    

    def initialize()
        initialize_fields
    end
    

    def init(columns, rows)
        commonStrings = CommonStrings.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Init: columns: ")
        stringBuffer.appendint(columns)
        stringBuffer.append(" rows: ")
        stringBuffer.appendint(rows)
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.INIT)
        @cellPositionArray = Array.new(columns) { Array.new(rows, nil) }
        @columns = columns
        @rows = rows
        (0...columns).each do |column|
            (0...rows).each do |row|
                self.createInstance(column, row)
            end
        end
    end
    

    def getInstanceColRow(i_column, i_row)
        begin
            return @cellPositionArray[i_column][i_row]
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(StringMaker.new().append("columns: ").appendint(self.getColumns()).append(" rows: ").appendint(self.getRows()).append(" col: ").appendint(i_column).append(" row: ").appendint(i_row).to_s, self, commonStrings.GET_INSTANCE, e)
            return @NONE
        end
    end
    

    def createInstance(i_column, i_row)
        cellPositionCanBeNull = @cellPositionArray[i_column][i_row]
        if cellPositionCanBeNull == nil
            cellPositionCanBeNull = CellPosition.new(i_column, i_row, @columns, @rows)
            @cellPositionArray[i_column][i_row] = cellPositionCanBeNull
        end
        return cellPositionCanBeNull
    end
    

    def getColumns()
        return @columns
    end
    

    def getRows()
        return @rows
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/graphics/CellPosition"

class CellPositionFactory
    SINGLETON = CellPositionFactory.new()
end

