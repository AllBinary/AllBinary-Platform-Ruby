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


module ::Org; module Allbinary; module Graphics

class CellPositionFactory
    attr_accessor :logUtil, :NONE, :cellPositionArray, :columns, :rows

    def jfields_org_allbinary_graphics_CellPositionFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @NONE = CellPosition.new(-1, -1, -1, -1)
        @cellPositionArray = Array.new(0) { Array.new(0, nil) }
        @columns = 0 unless instance_variable_defined?(:@columns)
        @rows = 0 unless instance_variable_defined?(:@rows)
    end
    

    def self.getInstance()
        return CellPositionFactory::SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_graphics_CellPositionFactory
    end
    

    def init(columns, rows)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("columns: ").appendint(self.getColumns()).append(" rows: ").appendint(self.getRows()).append(" col: ").appendint(i_column).append(" row: ").appendint(i_row).to_s, self, commonStrings.GET_INSTANCE, e)
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, CellPositionFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CellPositionFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false)

begin
    CellPositionFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

