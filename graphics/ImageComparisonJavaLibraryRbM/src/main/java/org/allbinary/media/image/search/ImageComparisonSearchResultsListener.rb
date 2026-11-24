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
require "org/allbinary/logic/util/event/BasicEventListenerInterface"

module ::Org; module Allbinary; module Media; module Image; module Search

module ImageComparisonSearchResultsListener
    include ::Org::Allbinary::Logic::Util::Event::BasicEventListenerInterface
    

    def onImageComparisonResultsEvent(imageComparisonSearchResultsEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onImageComparisonResultsEvent, 1
end

autoload :ImageComparisonSearchResultsEvent, "org/allbinary/media/image/search/ImageComparisonSearchResultsEvent" unless const_defined?(:ImageComparisonSearchResultsEvent, false)

end; end; end; end; end

