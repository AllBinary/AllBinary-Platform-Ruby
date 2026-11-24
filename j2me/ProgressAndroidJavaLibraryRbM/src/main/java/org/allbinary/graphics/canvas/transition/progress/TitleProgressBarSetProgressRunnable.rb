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
# package org.allbinary.graphics.canvas.transition.progress

require "java/lang/JavaOverload"
require "org/allbinary/graphics/canvas/transition/progress/ProgressRunnable"

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class TitleProgressBarSetProgressRunnable < ProgressRunnable
    attr_accessor :logUtil

    def jfields_org_allbinary_graphics_canvas_transition_progress_TitleProgressBarSetProgressRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(midletActivity, progressCanvas)
        super(midletActivity, progressCanvas)
        jfields_org_allbinary_graphics_canvas_transition_progress_TitleProgressBarSetProgressRunnable
    end
    

    def run()
        begin
            @midletActivity.onSetProgress(((@progressCanvas.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), @progressCanvas.getText())
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false)

end; end; end; end; end; end

