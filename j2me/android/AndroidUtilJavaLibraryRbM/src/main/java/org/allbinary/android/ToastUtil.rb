# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.android

require "java/lang/Runnable"

class ToastUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ToastUtil.instance
    end
    

    def makeToast(view, context, message, time)
        class MakeToast
            include Runnable
            attr_accessor :string

            def initialize_fields
                @string = nil
            end
            

            def initialize(string)
                initialize_fields
                @string = string
            end
            

            def run()
                logUtil = LogUtil.getInstance()
                begin
                    Toast.makeText(@context, @string, @time).show()
                rescue StandardError => e
                    commonStrings = CommonStrings.getInstance()
                    logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
                end
            end
        end
        view.post(MakeToast.new(message))
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/content/Context"
require "android/view/View"
require "android/widget/Toast"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class ToastUtil
    @@instance = ToastUtil.new()
end

