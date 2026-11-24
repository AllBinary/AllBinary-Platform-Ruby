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
# package org.allbinary.graphics.j2me.workarea.color

require "java/lang/JavaOverload"
# require "java/awt/BorderLayout"
# require "javax/swing/JColorChooser"
# require "javax/swing/JPanel"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Color

class ColorChooser < JPanel
    attr_accessor :jColorChooser1

    def jfields_org_allbinary_graphics_j2me_workarea_color_ColorChooser
        @jColorChooser1 = nil unless instance_variable_defined?(:@jColorChooser1)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_graphics_j2me_workarea_color_ColorChooser
        self.initComponents()
    end
    

    def initComponents()
        @jColorChooser1 = JColorChooser.new()
        setLayout(BorderLayout.new())
        add(@jColorChooser1, BorderLayout::CENTER)
    end
    java_overload :initComponents, 0
end

end; end; end; end; end; end

