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
# package views.generic.inventory


class InventorySearchLoopInfo
    attr_accessor :lastPage, :currentPage, :numberOfResultsOnCurrentPage, :numberOfResults, :CURRENT, :NUM, :LAST

    def initialize_fields
        @lastPage = -1
        @currentPage = -1
        @numberOfResultsOnCurrentPage = 0
        @numberOfResults = 0
        @CURRENT = "current: "
        @NUM = " num: "
        @LAST = " last: "
    end

    def initialize
        initialize_fields
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@CURRENT)
        stringBuffer.appendint(@currentPage)
        stringBuffer.append(@NUM)
        stringBuffer.appendint(@numberOfResults)
        stringBuffer.append(@LAST)
        stringBuffer.appendint(@lastPage)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"

