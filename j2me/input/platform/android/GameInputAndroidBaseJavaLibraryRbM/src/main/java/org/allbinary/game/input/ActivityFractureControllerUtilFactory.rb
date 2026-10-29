# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input


class ActivityFractureControllerUtilFactory
    

    def self.getInstance()
        _SDK_VERSION = AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 8
            return AndroidAPI1KeyFactory.getInstance()
        elsif _SDK_VERSION <= 11
            return AndroidAPI9KeyFactory.getInstance()
        else
            return AndroidAPI12KeyFactory.getAPI12Instance()
        end
    end
end

require "org/allbinary/android/AndroidInfoFactory"
require "org/allbinary/game/input/AndroidAPI12KeyFactory"
require "org/allbinary/game/input/AndroidAPI1KeyFactory"
require "org/allbinary/game/input/AndroidAPI9KeyFactory"
require "org/allbinary/game/input/AndroidKeyFactory"

