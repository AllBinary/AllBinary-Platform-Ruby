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

# require "javax/swing"

class JListSwingWorker < SwingWorker
    attr_accessor :jList, :listModel

    def initialize_fields
        @jList = nil
        @listModel = nil
    end
    

    def initialize(jList, listModel)
        super()
        initialize_fields
        self.setJList(jList)
        self.setListModel(listModel)
    end
    

    def doInBackground()
        return nil
    end
    

    def done()
        self.getJList().setModel(self.getListModel())
    end
    

    def getJList()
        return @jList
    end
    

    def setJList(jList)
        @jList = jList
    end
    

    def getListModel()
        return @listModel
    end
    

    def setListModel(listModel)
        @listModel = listModel
    end
end

