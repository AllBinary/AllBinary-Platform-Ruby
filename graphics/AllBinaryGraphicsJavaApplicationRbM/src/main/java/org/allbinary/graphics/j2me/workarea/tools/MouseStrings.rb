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


module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class MouseStrings
    attr_accessor :MOUSE_PRESSED, :MOUSE_RELEASED, :MOUSE_CLICKED, :MOUSE_DRAGGED, :MOUSE_MOVED, :MOUSE_PRESSED_LABEL, :MOUSE_RELEASED_LABEL, :MOUSE_CLICKED_LABEL, :MOUSE_DRAGGED_LABEL, :MOUSE_MOVED_LABEL

    def jfields_org_allbinary_graphics_j2me_workarea_tools_MouseStrings
        @MOUSE_PRESSED = "mousePressed"
        @MOUSE_RELEASED = "mouseReleased"
        @MOUSE_CLICKED = "mouseClicked"
        @MOUSE_DRAGGED = "mouseDragged"
        @MOUSE_MOVED = "mouseMoved"
        @MOUSE_PRESSED_LABEL = "MousePressed" + (::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_RELEASED_LABEL = "MouseReleased" + (::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_CLICKED_LABEL = "MouseClicked" + (::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_DRAGGED_LABEL = "MouseDragged" + (::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).to_s
        @MOUSE_MOVED_LABEL = "MouseMoved" + (::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).to_s
    end

    def initialize
        jfields_org_allbinary_graphics_j2me_workarea_tools_MouseStrings
    end
    

    def self.getInstance()
        return MouseStrings.instance
    end

    def self.instance()
        MouseStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MouseStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MouseStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MouseStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

begin
    MouseStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

