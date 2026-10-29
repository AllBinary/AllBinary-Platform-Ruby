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
# package org.allbinary.graphics.j2me.workarea.tools


class MouseStrings
    attr_accessor :MOUSE_PRESSED, :MOUSE_RELEASED, :MOUSE_CLICKED, :MOUSE_DRAGGED, :MOUSE_MOVED, :MOUSE_PRESSED_LABEL, :MOUSE_RELEASED_LABEL, :MOUSE_CLICKED_LABEL, :MOUSE_DRAGGED_LABEL, :MOUSE_MOVED_LABEL

    def initialize_fields
        @MOUSE_PRESSED = "mousePressed"
        @MOUSE_RELEASED = "mouseReleased"
        @MOUSE_CLICKED = "mouseClicked"
        @MOUSE_DRAGGED = "mouseDragged"
        @MOUSE_MOVED = "mouseMoved"
        @MOUSE_PRESSED_LABEL = "MousePressed" + (CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_RELEASED_LABEL = "MouseReleased" + (CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_CLICKED_LABEL = "MouseClicked" + (CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_DRAGGED_LABEL = "MouseDragged" + (CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_MOVED_LABEL = "MouseMoved" + (CommonSeps.getInstance().COLON_SEP).to_s
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return MouseStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonSeps"

class MouseStrings
    @@instance = MouseStrings.new()
end

