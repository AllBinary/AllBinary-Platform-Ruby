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


module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonLocationHelper
    attr_accessor :totalColumns, :totalRows, :columnsRemainder, :rowsRemainder, :columnsRemainderHalf, :rowsRemainderHalf

    def jfields_org_allbinary_input_motion_button_TouchButtonLocationHelper
        @totalColumns = nil unless instance_variable_defined?(:@totalColumns)
        @totalRows = nil unless instance_variable_defined?(:@totalRows)
        @columnsRemainder = nil unless instance_variable_defined?(:@columnsRemainder)
        @rowsRemainder = nil unless instance_variable_defined?(:@rowsRemainder)
        @columnsRemainderHalf = nil unless instance_variable_defined?(:@columnsRemainderHalf)
        @rowsRemainderHalf = nil unless instance_variable_defined?(:@rowsRemainderHalf)
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_TouchButtonLocationHelper
        buttonSize = CommonButtons.getInstance().STANDARD_BUTTON_SIZE
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false)

end; end; end; end; end

