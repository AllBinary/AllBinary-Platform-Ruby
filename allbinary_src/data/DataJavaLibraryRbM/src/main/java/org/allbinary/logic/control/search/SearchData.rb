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
# package org.allbinary.logic.control.search


module ::Org; module Allbinary; module Logic; module ControlPackage; module Search

class SearchData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TOTAL_NUMBER_PAGES, "SEARCHDATA_TOTALNUMBEROFPAGES")
        const_set(:TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, "SEARCHDATA_TOTALNUMBEROFITEMSONTHISPAGE")
        const_set(:TOTAL_NUMBER_ITEMS, "SEARCHDATA_TOTALNUMBEROFITEMS")
        const_set(:DEFAULT_PAGE_LENGTH, 10)
        const_set(:GENERATESTATICPAGES, "Generate Static Pages")
        const_set(:SEARCHBYSUMMARY, "Search By Summary")
        const_set(:SEARCHBYDESCRIPTION, "Search By Description")
        const_set(:SEARCHBYCATEGORY, "Search By Category")
        const_set(:SEARCHCATEGORIES, "Search Categories")
        const_set(:FILENAME, "SEARCHDATA_BASEFILENAME")
        const_set(:COLUMNNAME, "COLUMN_NAME")
        const_set(:COLUMNVALUE, "COLUMN_VALUE")
        const_set(:PARAMS, "SEARCHDATA_PARAMS")
        const_set(:LENGTH, "SEARCHDATA_LENGTH")
        const_set(:ORDER, "SEARCHDATA_ORDER")
        const_set(:PAGE, "SEARCHDATA_PAGE")
        const_set(:FIELDS, "SEARCHDATA_FIELDS")
        const_set(:FIELD, "SEARCHDATA_FIELD")
        const_set(:SORTBY, "SEARCHDATA_SORTBY")
        const_set(:TYPE, "SEARCHDATA_TYPE")
        const_set(:PAGE_INFO, "pageInfo")
        const_set(:SEARCH, "search")
        const_set(:MAKEPUBLIC, "Make Public")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SearchData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TOTAL_NUMBER_PAGES, :TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, :TOTAL_NUMBER_ITEMS, :DEFAULT_PAGE_LENGTH, :GENERATESTATICPAGES, :SEARCHBYSUMMARY, :SEARCHBYDESCRIPTION, :SEARCHBYCATEGORY, :SEARCHCATEGORIES, :FILENAME, :COLUMNNAME, :COLUMNVALUE, :PARAMS, :LENGTH, :ORDER, :PAGE, :FIELDS, :FIELD, :SORTBY, :TYPE, :PAGE_INFO, :SEARCH, :MAKEPUBLIC].include?(name)
        end
        super
    end
end

begin
    SearchData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

