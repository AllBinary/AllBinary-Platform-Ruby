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

class ActivityFractureInputUtilFactory
    

    def self.getInstance()
        _SDK_VERSION = ::Org::Allbinary::Android::AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 4
            return ::Org::Allbinary::Android::Api1::ActivityFractureUtilAPI1.getInstance()
        elsif _SDK_VERSION <= 15
            return ::Org::Allbinary::Android::Api5::ActivityFractureUtilAPI5.getInstance()
        elsif _SDK_VERSION <= 16
            return ::Org::Allbinary::Android::Api16::ActivityFractureUtilAPI16.getInstance()
        else
            return ::Org::Allbinary::Android::Api19::ActivityFractureUtilAPI19.getInstance()
        end
    end
end

module ::Org; module Allbinary; module Android; autoload :ActivityFractureUtil, "org/allbinary/android/ActivityFractureUtil" unless const_defined?(:ActivityFractureUtil, false); end; end; end
module ::Org; module Allbinary; module Android; autoload :AndroidInfoFactory, "org/allbinary/android/AndroidInfoFactory" unless const_defined?(:AndroidInfoFactory, false); end; end; end
module ::Org; module Allbinary; module Android; module Api1; autoload :ActivityFractureUtilAPI1, "org/allbinary/android/api1/ActivityFractureUtilAPI1" unless const_defined?(:ActivityFractureUtilAPI1, false); end; end; end; end
module ::Org; module Allbinary; module Android; module Api16; autoload :ActivityFractureUtilAPI16, "org/allbinary/android/api16/ActivityFractureUtilAPI16" unless const_defined?(:ActivityFractureUtilAPI16, false); end; end; end; end
module ::Org; module Allbinary; module Android; module Api19; autoload :ActivityFractureUtilAPI19, "org/allbinary/android/api19/ActivityFractureUtilAPI19" unless const_defined?(:ActivityFractureUtilAPI19, false); end; end; end; end
module ::Org; module Allbinary; module Android; module Api5; autoload :ActivityFractureUtilAPI5, "org/allbinary/android/api5/ActivityFractureUtilAPI5" unless const_defined?(:ActivityFractureUtilAPI5, false); end; end; end; end

end; end; end; end; end

