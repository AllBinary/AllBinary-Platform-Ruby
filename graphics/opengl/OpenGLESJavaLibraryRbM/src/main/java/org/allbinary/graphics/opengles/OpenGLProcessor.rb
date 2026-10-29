# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles

# require "javax/microedition/khronos/opengles/GL10"

class OpenGLProcessor
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def process(gl)
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

