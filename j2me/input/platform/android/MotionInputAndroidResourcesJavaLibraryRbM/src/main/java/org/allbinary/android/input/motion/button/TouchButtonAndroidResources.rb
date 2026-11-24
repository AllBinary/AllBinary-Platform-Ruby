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
# package org.allbinary.android.input.motion.button

require "java/lang/JavaOverload"
require "org/allbinary/init/Init"

module ::Org; module Allbinary; module Android; module Input; module Motion; module Button

class TouchButtonAndroidResources < ::Org::Allbinary::Init::Init
    

    def init()
        resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
        androidResources = ::Org::Allbinary::AndroidResources.getInstance()
        _RESOURCE_STRING_ARRAY = [::Org::Allbinary::Input::Motion::Button::TouchButtonBlankResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonGenericActionResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonStartResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonUpResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonDownResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonTurnLeftResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonTurnRightResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonStrafeLeftResource.getInstance(), ::Org::Allbinary::Input::Motion::Button::TouchButtonStrafeRightResource.getInstance()]
        _RESOURCE_ARRAY = (Array.new(_RESOURCE_STRING_ARRAY.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        if ::Org::Allbinary::Input::Motion::Button::CommonButtons.getInstance().STANDARD_BUTTON_SIZE == 128
            _RESOURCE_ARRAY[0] = androidResources.raw.touch_button_128_by_128
            _RESOURCE_ARRAY[1] = androidResources.raw.touch_button_generic_action_128_by_128
            _RESOURCE_ARRAY[2] = androidResources.raw.touch_button_start_128_by_128
            _RESOURCE_ARRAY[3] = androidResources.raw.touch_button_up_arrow_128_by_128
            _RESOURCE_ARRAY[4] = androidResources.raw.touch_button_down_arrow_128_by_128
            _RESOURCE_ARRAY[5] = androidResources.raw.touch_button_turn_left_arrow_128_by_128
            _RESOURCE_ARRAY[6] = androidResources.raw.touch_button_turn_right_arrow_128_by_128
            _RESOURCE_ARRAY[7] = androidResources.raw.touch_button_strafe_left_arrow_128_by_128
            _RESOURCE_ARRAY[8] = androidResources.raw.touch_button_strafe_right_arrow_128_by_128
            if ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
                resourceUtil.addResource(_RESOURCE_STRING_ARRAY[2].HINT, (androidResources.raw.ouya_o).to_s)
            end
        else
            _RESOURCE_ARRAY[0] = androidResources.raw.touch_button_64_by_64
            _RESOURCE_ARRAY[1] = androidResources.raw.touch_button_generic_action_64_by_64
            _RESOURCE_ARRAY[2] = androidResources.raw.touch_button_start_64_by_64
            _RESOURCE_ARRAY[3] = androidResources.raw.touch_button_up_arrow_64_by_64
            _RESOURCE_ARRAY[4] = androidResources.raw.touch_button_down_arrow_64_by_64
            _RESOURCE_ARRAY[5] = androidResources.raw.touch_button_turn_left_arrow_64_by_64
            _RESOURCE_ARRAY[6] = androidResources.raw.touch_button_turn_right_arrow_64_by_64
            _RESOURCE_ARRAY[7] = androidResources.raw.touch_button_strafe_left_arrow_64_by_64
            _RESOURCE_ARRAY[8] = androidResources.raw.touch_button_strafe_right_arrow_64_by_64
        end
        (0..._RESOURCE_ARRAY.length).each do |index|
            resourceUtil.addResource(_RESOURCE_STRING_ARRAY[index].RESOURCE, (_RESOURCE_ARRAY[index]).to_s)
        end
    end
    java_overload :init, 0
end

module ::Org; module Allbinary; autoload :AndroidResources, "org/allbinary/AndroidResources" unless const_defined?(:AndroidResources, false); end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonBlankResource, "org/allbinary/input/motion/button/TouchButtonBlankResource" unless const_defined?(:TouchButtonBlankResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonDownResource, "org/allbinary/input/motion/button/TouchButtonDownResource" unless const_defined?(:TouchButtonDownResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonGenericActionResource, "org/allbinary/input/motion/button/TouchButtonGenericActionResource" unless const_defined?(:TouchButtonGenericActionResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonResource, "org/allbinary/input/motion/button/TouchButtonResource" unless const_defined?(:TouchButtonResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonStartResource, "org/allbinary/input/motion/button/TouchButtonStartResource" unless const_defined?(:TouchButtonStartResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonStrafeLeftResource, "org/allbinary/input/motion/button/TouchButtonStrafeLeftResource" unless const_defined?(:TouchButtonStrafeLeftResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonStrafeRightResource, "org/allbinary/input/motion/button/TouchButtonStrafeRightResource" unless const_defined?(:TouchButtonStrafeRightResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonTurnLeftResource, "org/allbinary/input/motion/button/TouchButtonTurnLeftResource" unless const_defined?(:TouchButtonTurnLeftResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonTurnRightResource, "org/allbinary/input/motion/button/TouchButtonTurnRightResource" unless const_defined?(:TouchButtonTurnRightResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonUpResource, "org/allbinary/input/motion/button/TouchButtonUpResource" unless const_defined?(:TouchButtonUpResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end

end; end; end; end; end; end

