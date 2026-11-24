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

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"
require "org/allbinary/media/image/comparison/ImageComparisonResultsListener"

module ::Org; module Allbinary; module Media; module Image; module Search

class ImageComparisonSearchWorker < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    include ::Org::Allbinary::Media::Image::Comparison::ImageComparisonResultsListener
    attr_accessor :logUtil, :commonStrings, :imageComparisonInfoVector, :index, :running, :imageSearchConstraintsInterface

    def jfields_org_allbinary_media_image_search_ImageComparisonSearchWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @imageComparisonInfoVector = nil unless instance_variable_defined?(:@imageComparisonInfoVector)
        @index = 0 unless instance_variable_defined?(:@index)
        @running = false unless instance_variable_defined?(:@running)
        @imageSearchConstraintsInterface = nil unless instance_variable_defined?(:@imageSearchConstraintsInterface)
    end
    

    def initialize(imageSearchConstraintsInterface)
        super()
        jfields_org_allbinary_media_image_search_ImageComparisonSearchWorker
        @imageComparisonInfoVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @imageSearchConstraintsInterface = imageSearchConstraintsInterface
    end
    

    def onImageComparisonResultsEvent(imageComparisonResultsEvent)
        @imageComparisonInfoVector.add(imageComparisonResultsEvent.getImageComparisonResult())
        self.run()
    end
    java_overload :onImageComparisonResultsEvent, 1
    

    def onEvent(allBinaryEventObject)
        self.onImageComparisonResultsEvent(allBinaryEventObject)
    end
    java_overload :onEvent, 1
    

    def isRunning()
        java_monitor.synchronize do
        return @running
        end
    end
    java_overload :isRunning, 0
    

    def setRunning(running)
        java_monitor.synchronize do
        @running = running
        end
    end
    java_overload :setRunning, 1
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1000)
            timeHelper.setStartTimeTNT()
            imageComparisonInfo = @imageComparisonInfoVector.get(0)
            @logUtil.putF(imageComparisonInfo.to_s, self, @commonStrings.RUN)
            latestBufferedImage = imageComparisonInfo.getBufferedImages()[1]
            @imageComparisonInfoVector.remove(imageComparisonInfo)
            @index += 1
            @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
            self.setRunning(false)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparisonResultsEvent, "org/allbinary/media/image/comparison/ImageComparisonResultsEvent" unless const_defined?(:ImageComparisonResultsEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :ImageComparisonSearchConstraintsInterface, "org/allbinary/media/image/search/ImageComparisonSearchConstraintsInterface" unless const_defined?(:ImageComparisonSearchConstraintsInterface, false)

end; end; end; end; end

