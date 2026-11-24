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
require "org/allbinary/thread/ARunnable"

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class ProgressRunnable < ::Org::Allbinary::ThreadPackage::ARunnable
    attr_accessor :midletActivity, :progressCanvas

    def jfields_org_allbinary_graphics_canvas_transition_progress_ProgressRunnable
        @midletActivity = nil unless instance_variable_defined?(:@midletActivity)
        @progressCanvas = nil unless instance_variable_defined?(:@progressCanvas)
    end
    

    def initialize(midletActivity, progressCanvas)
        super()
        jfields_org_allbinary_graphics_canvas_transition_progress_ProgressRunnable
        midletActivity2 = midletActivity
        @midletActivity = midletActivity2
        @progressCanvas = progressCanvas
    end
    

    def run()
    end
    java_overload :run, 0
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Org; module Allbinary; module Android; module Activity; autoload :MidletActivityBase, "org/allbinary/android/activity/MidletActivityBase" unless const_defined?(:MidletActivityBase, false); end; end; end; end
module ::Org; module Allbinary; module Android; module Activity; autoload :SimpleProgressActivityInterface, "org/allbinary/android/activity/SimpleProgressActivityInterface" unless const_defined?(:SimpleProgressActivityInterface, false); end; end; end; end
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false)

end; end; end; end; end; end

