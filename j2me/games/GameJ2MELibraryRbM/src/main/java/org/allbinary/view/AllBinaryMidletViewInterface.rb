# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.view

require "java/lang/JavaOverload"
require "org/allbinary/game/configuration/event/GameInitializedListenerInterface"
require "org/allbinary/game/midlet/DemoGameMidletEventListener"
require "org/allbinary/midlet/MidletCompositeInterface"
require "org/allbinary/view/EmulatorViewInterface"

module ::Org; module Allbinary; module View

module AllBinaryMidletViewInterface
    include ::Org::Allbinary::Midlet::MidletCompositeInterface
    include EmulatorViewInterface
    include ::Org::Allbinary::Game::Midlet::DemoGameMidletEventListener
    include ::Org::Allbinary::Game::Configuration::Event::GameInitializedListenerInterface
    

    def onResume()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onResume, 0
    

    def onPause()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onPause, 0
    

    def onDestroy()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDestroy, 0
end

end; end; end

