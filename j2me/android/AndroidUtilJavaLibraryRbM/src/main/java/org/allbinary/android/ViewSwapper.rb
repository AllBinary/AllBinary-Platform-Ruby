# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.android


module ::Org; module Allbinary; module Android

class ViewSwapper
    attr_accessor :rootViewId, :activity, :currentMainViewId, :mainViewArray, :topViewArray

    def jfields_org_allbinary_android_ViewSwapper
        @rootViewId = nil unless instance_variable_defined?(:@rootViewId)
        @activity = nil unless instance_variable_defined?(:@activity)
        @currentMainViewId = -1
        @mainViewArray = ViewSwapper::NULL_VIEW_ARRAY
        @topViewArray = ViewSwapper::NULL_VIEW_ARRAY
    end
    

    def initialize(activity, rootViewId)
        jfields_org_allbinary_android_ViewSwapper
        @activity = activity
        @rootViewId = rootViewId
    end
    

    def setMainViews(viewArray)
        @mainViewArray = viewArray
    end
    

    def setTopViewArray(topViewArray)
        @topViewArray = topViewArray
    end
    

    def setMainView(id)
        viewGroup = @activity.findViewById(@rootViewId)
        if id != @currentMainViewId
            (0...@topViewArray.length).each do |index|
                viewGroup.removeView(@topViewArray[index])
            end
            (0...@mainViewArray.length).each do |index|
                if id != @mainViewArray[index].getId()
                    viewGroup.removeView(@mainViewArray[index])
                end
            end
            (0...@mainViewArray.length).each do |index|
                if id == @mainViewArray[index].getId()
                    viewGroup.addView(@mainViewArray[index])
                    @currentMainViewId = id
                end
            end
            (0...@topViewArray.length).each do |index|
                viewGroup.addView(@topViewArray[index])
            end
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_VIEW_ARRAY, Array.new(0, nil))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ViewSwapper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_VIEW_ARRAY].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
module ::Android; module View; autoload :ViewGroup, "android/view/ViewGroup" unless const_defined?(:ViewGroup, false); end; end

begin
    ViewSwapper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

