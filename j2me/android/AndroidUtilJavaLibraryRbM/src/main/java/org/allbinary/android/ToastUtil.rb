# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.android

require "java/lang/JavaOverload"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Android

class ToastUtil
    attr_accessor :logUtil
    #A member class instead of a local class using the method parameters since most of the converted languages do not have local classes.
    class MakeToast
        include ::Java::Lang::Runnable
        attr_accessor :context, :string, :time

        def jfields_org_allbinary_android_ToastUtil_MakeToast
            @context = nil unless instance_variable_defined?(:@context)
            @string = nil unless instance_variable_defined?(:@string)
            @time = nil unless instance_variable_defined?(:@time)
        end
        

        def initialize(context, string, time)
            jfields_org_allbinary_android_ToastUtil_MakeToast
            @context = context
            @string = string
            @time = time
        end
        

        def run()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            begin
                ::Android::Widget::Toast.makeText(@context, @string, @time).show()
            rescue StandardError => e
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
        java_overload :run, 0
    end

    def jfields_org_allbinary_android_ToastUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_android_ToastUtil
    end
    

    def self.getInstance()
        return ToastUtil.instance
    end
    

    def makeToast(view, context, message, time)
        view.post(MakeToast.new(context, message, time))
    end

    def self.instance()
        ToastUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ToastUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ToastUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ToastUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
module ::Android; module Widget; autoload :Toast, "android/widget/Toast" unless const_defined?(:Toast, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    ToastUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

