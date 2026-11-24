# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class ActivityFractureControllerUtilFactory
    

    def self.getInstance()
        _SDK_VERSION = ::Org::Allbinary::Android::AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 8
            return AndroidAPI1KeyFactory.getInstance()
        elsif _SDK_VERSION <= 11
            return AndroidAPI9KeyFactory.getInstance()
        else
            return AndroidAPI12KeyFactory.getAPI12Instance()
        end
    end
end

module ::Org; module Allbinary; module Android; autoload :AndroidInfoFactory, "org/allbinary/android/AndroidInfoFactory" unless const_defined?(:AndroidInfoFactory, false); end; end; end
autoload :AndroidAPI12KeyFactory, "org/allbinary/game/input/AndroidAPI12KeyFactory" unless const_defined?(:AndroidAPI12KeyFactory, false)
autoload :AndroidAPI1KeyFactory, "org/allbinary/game/input/AndroidAPI1KeyFactory" unless const_defined?(:AndroidAPI1KeyFactory, false)
autoload :AndroidAPI9KeyFactory, "org/allbinary/game/input/AndroidAPI9KeyFactory" unless const_defined?(:AndroidAPI9KeyFactory, false)
autoload :AndroidKeyFactory, "org/allbinary/game/input/AndroidKeyFactory" unless const_defined?(:AndroidKeyFactory, false)

end; end; end; end

