# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.android


class ViewSwapper
    attr_accessor :rootViewId, :activity, :currentMainViewId, :mainViewArray, :topViewArray

    def initialize_fields
        @rootViewId = nil
        @activity = nil
        @currentMainViewId = -1
        @mainViewArray = ViewSwapper::NULL_VIEW_ARRAY
        @topViewArray = ViewSwapper::NULL_VIEW_ARRAY
    end
    

    def initialize(activity, rootViewId)
        initialize_fields
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
end

require "android/app/Activity"
require "android/view/View"
require "android/view/ViewGroup"

class ViewSwapper
    NULL_VIEW_ARRAY = Array.new(0, nil)
end

