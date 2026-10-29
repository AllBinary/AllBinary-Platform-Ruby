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
# package org.allbinary.input.motion.button


class TouchButtonLocationHelper
    attr_accessor :totalColumns, :totalRows, :columnsRemainder, :rowsRemainder, :columnsRemainderHalf, :rowsRemainderHalf

    def initialize_fields
        @totalColumns = nil
        @totalRows = nil
        @columnsRemainder = nil
        @rowsRemainder = nil
        @columnsRemainderHalf = nil
        @rowsRemainderHalf = nil
    end
    

    def initialize()
        initialize_fields
        buttonSize = CommonButtons.getInstance().STANDARD_BUTTON_SIZE
        displayInfo = DisplayInfoSingleton.getInstance()
        @totalColumns = ((displayInfo.getLastWidth()).to_f / (buttonSize).to_f).round
        @totalRows = ((displayInfo.getLastHeight()).to_f / (buttonSize).to_f).round
        @columnsRemainder = displayInfo.getLastWidth() % buttonSize
        @columnsRemainderHalf = (@columnsRemainder >> 1)
        @rowsRemainder = displayInfo.getLastHeight() % buttonSize
        @rowsRemainderHalf = (@rowsRemainder >> 1)
    end
    

    def getTotalColumns()
        return @totalColumns
    end
    

    def getTotalRows()
        return @totalRows
    end
    

    def getColumnsRemainder()
        return @columnsRemainder
    end
    

    def getRowsRemainder()
        return @rowsRemainder
    end
    

    def getColumnsRemainderHalf()
        return @columnsRemainderHalf
    end
    

    def getRowsRemainderHalf()
        return @rowsRemainderHalf
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("totalColumns: ")
        stringBuffer.appendint(@totalColumns)
        stringBuffer.append(" totalRows: ")
        stringBuffer.appendint(@totalRows)
        stringBuffer.append(" columnsRemainder: ")
        stringBuffer.appendint(@columnsRemainder)
        stringBuffer.append(" rowsRemainder: ")
        stringBuffer.appendint(@rowsRemainder)
        stringBuffer.append(" columnsRemainderHalf: ")
        stringBuffer.appendint(@columnsRemainderHalf)
        stringBuffer.append(" rowsRemainderHalf: ")
        stringBuffer.appendint(@rowsRemainderHalf)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/input/motion/button/CommonButtons"

