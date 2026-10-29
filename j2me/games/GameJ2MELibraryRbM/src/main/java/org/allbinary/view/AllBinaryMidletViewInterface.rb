# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.view

require "org/allbinary/game/configuration/event/GameInitializedListenerInterface"
require "org/allbinary/game/midlet/DemoGameMidletEventListener"
require "org/allbinary/midlet/MidletCompositeInterface"
require "org/allbinary/view/EmulatorViewInterface"

module AllBinaryMidletViewInterface
    include MidletCompositeInterface
    include EmulatorViewInterface
    include DemoGameMidletEventListener
    include GameInitializedListenerInterface
    

    def onResume()
        raise NotImplementedError
    end
    

    def onPause()
        raise NotImplementedError
    end
    

    def onDestroy()
        raise NotImplementedError
    end
end

