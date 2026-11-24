# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.view


module ::Org; module Allbinary; module View

module EmulatorViewInterface
    

    def setMidlet(midlet)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onEmulatorInitComplete(midletActivity)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onSetDisplayable(displayable)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Javax; module Microedition; module Midlet; autoload :MIDlet, "javax/microedition/midlet/MIDlet" unless const_defined?(:MIDlet, false); end; end; end

end; end; end

