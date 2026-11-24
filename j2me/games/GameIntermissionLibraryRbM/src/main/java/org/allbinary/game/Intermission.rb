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
# package org.allbinary.game

require "java/lang/JavaOverload"
require "org/allbinary/game/IntermissionInterface"

module ::Org; module Allbinary; module Game

class Intermission
    include IntermissionInterface
    attr_accessor :enabled, :timeElapsedHelper, :intermissionEnableListener

    def jfields_org_allbinary_game_Intermission
        @enabled = false unless instance_variable_defined?(:@enabled)
        @timeElapsedHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @intermissionEnableListener = NullIntermissionEnableListener.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_game_Intermission
    end
    

    def setListener(enableListener)
        @intermissionEnableListener = enableListener
    end
    java_overload :setListener, 1
    

    def getTimeDelayHelper()
        return @timeElapsedHelper
    end
    java_overload :getTimeDelayHelper, 0
    

    def setEnabled(enabled)
        @enabled = enabled
        if self.isEnabled()
            self.getTimeDelayHelper().setStartTimeTNT()
        end
        @intermissionEnableListener.notifyIntermission(enabled)
    end
    java_overload :setEnabled, 1
    

    def isEnabled()
        return @enabled
    end
    java_overload :isEnabled, 0
end

module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :IntermissionEnableListenerInterface, "org/allbinary/game/IntermissionEnableListenerInterface" unless const_defined?(:IntermissionEnableListenerInterface, false)
autoload :NullIntermissionEnableListener, "org/allbinary/game/NullIntermissionEnableListener" unless const_defined?(:NullIntermissionEnableListener, false)

end; end; end

