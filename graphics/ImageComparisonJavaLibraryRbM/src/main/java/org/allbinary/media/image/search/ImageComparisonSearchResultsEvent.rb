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
# package org.allbinary.media.image.search

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class ImageComparisonSearchResultsEvent < AllBinaryEventObject
    attr_accessor :imageComparisonSearch

    def initialize_fields
        @imageComparisonSearch = nil
    end
    

    def initialize(anyType, imageComparisonSearch)
        super(anyType)
        initialize_fields
        self.setImageComparisonSearch(imageComparisonSearch)
    end
    

    def getImageComparisonSearch()
        return @imageComparisonSearch
    end
    

    def setImageComparisonSearch(imageComparisonSearch)
        @imageComparisonSearch = imageComparisonSearch
    end
end

require "org/allbinary/media/image/search/ImageComparisonSearch"

