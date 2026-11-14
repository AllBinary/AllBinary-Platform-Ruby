# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles


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

autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

