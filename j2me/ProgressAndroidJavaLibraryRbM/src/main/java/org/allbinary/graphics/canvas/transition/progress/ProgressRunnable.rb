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

require "org/allbinary/thread/ARunnable"

class ProgressRunnable < ARunnable
    attr_accessor :midletActivity, :progressCanvas

    def initialize_fields
        @midletActivity = nil
        @progressCanvas = nil
    end
    

    def initialize(midletActivity, progressCanvas)
        super()
        initialize_fields
        midletActivity2 = midletActivity
        @midletActivity = midletActivity2
        @progressCanvas = progressCanvas
    end
    

    def run()
    end
end

require "android/app/Activity"
require "org/allbinary/android/activity/MidletActivityBase"
require "org/allbinary/android/activity/SimpleProgressActivityInterface"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

