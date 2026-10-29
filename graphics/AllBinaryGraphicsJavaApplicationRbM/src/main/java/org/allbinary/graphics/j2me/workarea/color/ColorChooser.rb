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


class ColorChooser < JPanel
    attr_accessor :jColorChooser1

    def initialize_fields
        @jColorChooser1 = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
    end
    

    def initComponents()
        @jColorChooser1 = JColorChooser.new()
        setLayout(BorderLayout.new())
        add(@jColorChooser1, java.awt.BorderLayout.CENTER)
    end
end

