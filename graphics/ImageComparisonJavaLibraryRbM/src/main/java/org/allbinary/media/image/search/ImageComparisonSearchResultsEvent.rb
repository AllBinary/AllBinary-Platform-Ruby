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

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Media; module Image; module Search

class ImageComparisonSearchResultsEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :imageComparisonSearch

    def jfields_org_allbinary_media_image_search_ImageComparisonSearchResultsEvent
        @imageComparisonSearch = nil unless instance_variable_defined?(:@imageComparisonSearch)
    end
    

    def initialize(anyType, imageComparisonSearch)
        super(anyType)
        jfields_org_allbinary_media_image_search_ImageComparisonSearchResultsEvent
        self.setImageComparisonSearch(imageComparisonSearch)
    end
    

    def getImageComparisonSearch()
        return @imageComparisonSearch
    end
    java_overload :getImageComparisonSearch, 0
    

    def setImageComparisonSearch(imageComparisonSearch)
        @imageComparisonSearch = imageComparisonSearch
    end
    java_overload :setImageComparisonSearch, 1
end

autoload :ImageComparisonSearch, "org/allbinary/media/image/search/ImageComparisonSearch" unless const_defined?(:ImageComparisonSearch, false)

end; end; end; end; end

