#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion


module ::Org; module Allbinary; module Android; module Input; module Motion

class GameInputMotionInfoFactory
    

    def self.getInstance()
        _SDK_VERSION = ::Org::Allbinary::Android::AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 4
            return ::Org::Allbinary::Android::Input::Motion::Api1::GameInputMotionInfoAPI1.getInstance()
        else
            return ::Org::Allbinary::Android::Input::Motion::Api5::GameInputMotionInfoAPI5.getInstance()
        end
    end
end

module ::Org; module Allbinary; module Android; autoload :AndroidInfoFactory, "org/allbinary/android/AndroidInfoFactory" unless const_defined?(:AndroidInfoFactory, false); end; end; end
module ::Org; module Allbinary; module Android; module Input; module Motion; module Api1; autoload :GameInputMotionInfoAPI1, "org/allbinary/android/input/motion/api1/GameInputMotionInfoAPI1" unless const_defined?(:GameInputMotionInfoAPI1, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Android; module Input; module Motion; module Api5; autoload :GameInputMotionInfoAPI5, "org/allbinary/android/input/motion/api5/GameInputMotionInfoAPI5" unless const_defined?(:GameInputMotionInfoAPI5, false); end; end; end; end; end; end
autoload :GameInputMotionInfo, "org/allbinary/android/input/motion/GameInputMotionInfo" unless const_defined?(:GameInputMotionInfo, false)

end; end; end; end; end

