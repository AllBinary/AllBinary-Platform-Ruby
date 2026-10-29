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

require "org/allbinary/graphics/canvas/transition/progress/ProgressRunnable"

class TitleProgressBarSetProgressRunnable < ProgressRunnable
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(midletActivity, progressCanvas)
        super(midletActivity, progressCanvas)
        initialize_fields
    end
    

    def run()
        begin
            @midletActivity.onSetProgress((@progressCanvas.getValue()).to_i, @progressCanvas.getText())
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "android/app/Activity"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

