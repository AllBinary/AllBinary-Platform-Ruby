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
# package org.allbinary.gui.swing.workers

require "java/lang/JavaOverload"
# require "javax/swing/SwingWorker"
# require "javax/swing/JList"
# require "javax/swing/ListModel"

module ::Org; module Allbinary; module Gui; module Swing; module Workers

class JListSwingWorker < SwingWorker
    attr_accessor :jList, :listModel

    def jfields_org_allbinary_gui_swing_workers_JListSwingWorker
        @jList = nil unless instance_variable_defined?(:@jList)
        @listModel = nil unless instance_variable_defined?(:@listModel)
    end
    

    def initialize(jList, listModel)
        super()
        jfields_org_allbinary_gui_swing_workers_JListSwingWorker
        self.setJList(jList)
        self.setListModel(listModel)
    end
    

    def doInBackground()
        return nil
    end
    java_overload :doInBackground, 0
    

    def done()
        self.getJList().setModel(self.getListModel())
    end
    java_overload :done, 0
    

    def getJList()
        return @jList
    end
    java_overload :getJList, 0
    

    def setJList(jList)
        @jList = jList
    end
    java_overload :setJList, 1
    

    def getListModel()
        return @listModel
    end
    java_overload :getListModel, 0
    

    def setListModel(listModel)
        @listModel = listModel
    end
    java_overload :setListModel, 1
end

end; end; end; end; end

