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


module ::Views; module Generic; module Inventory

class InventorySearchLoopInfo
    attr_accessor :lastPage, :currentPage, :numberOfResultsOnCurrentPage, :numberOfResults, :CURRENT, :NUM, :LAST

    def jfields_views_generic_inventory_InventorySearchLoopInfo
        @lastPage = -1
        @currentPage = -1
        @numberOfResultsOnCurrentPage = 0
        @numberOfResults = 0
        @CURRENT = "current: "
        @NUM = " num: "
        @LAST = " last: "
    end

    def initialize
        jfields_views_generic_inventory_InventorySearchLoopInfo
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end

