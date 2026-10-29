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

require "org/allbinary/init/Init"

class TouchButtonAndroidResources < Init
    

    def init()
        resourceUtil = ResourceUtil.getInstance()
        androidResources = AndroidResources.getInstance()
        _RESOURCE_STRING_ARRAY = [TouchButtonBlankResource.getInstance(), TouchButtonGenericActionResource.getInstance(), TouchButtonStartResource.getInstance(), TouchButtonUpResource.getInstance(), TouchButtonDownResource.getInstance(), TouchButtonTurnLeftResource.getInstance(), TouchButtonTurnRightResource.getInstance(), TouchButtonStrafeLeftResource.getInstance(), TouchButtonStrafeRightResource.getInstance()]
        _RESOURCE_ARRAY = Array.new(_RESOURCE_STRING_ARRAY.length, 0)
        if CommonButtons.getInstance().STANDARD_BUTTON_SIZE == 128
            _RESOURCE_ARRAY[0] = androidResources.raw.touch_button_128_by_128
            _RESOURCE_ARRAY[1] = androidResources.raw.touch_button_generic_action_128_by_128
            _RESOURCE_ARRAY[2] = androidResources.raw.touch_button_start_128_by_128
            _RESOURCE_ARRAY[3] = androidResources.raw.touch_button_up_arrow_128_by_128
            _RESOURCE_ARRAY[4] = androidResources.raw.touch_button_down_arrow_128_by_128
            _RESOURCE_ARRAY[5] = androidResources.raw.touch_button_turn_left_arrow_128_by_128
            _RESOURCE_ARRAY[6] = androidResources.raw.touch_button_turn_right_arrow_128_by_128
            _RESOURCE_ARRAY[7] = androidResources.raw.touch_button_strafe_left_arrow_128_by_128
            _RESOURCE_ARRAY[8] = androidResources.raw.touch_button_strafe_right_arrow_128_by_128
            if OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
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
end

require "org/allbinary/AndroidResources"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/input/motion/button/CommonButtons"
require "org/allbinary/input/motion/button/TouchButtonBlankResource"
require "org/allbinary/input/motion/button/TouchButtonDownResource"
require "org/allbinary/input/motion/button/TouchButtonGenericActionResource"
require "org/allbinary/input/motion/button/TouchButtonResource"
require "org/allbinary/input/motion/button/TouchButtonStartResource"
require "org/allbinary/input/motion/button/TouchButtonStrafeLeftResource"
require "org/allbinary/input/motion/button/TouchButtonStrafeRightResource"
require "org/allbinary/input/motion/button/TouchButtonTurnLeftResource"
require "org/allbinary/input/motion/button/TouchButtonTurnRightResource"
require "org/allbinary/input/motion/button/TouchButtonUpResource"
require "org/allbinary/logic/system/os/OperatingSystemFactory"

