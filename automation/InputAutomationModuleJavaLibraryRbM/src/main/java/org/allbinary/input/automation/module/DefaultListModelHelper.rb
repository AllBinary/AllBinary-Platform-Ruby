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
# package org.allbinary.input.automation.module

# require "javax/swing"

class DefaultListModelHelper
    attr_accessor :defaultListModel, :vector

    def initialize_fields
        @defaultListModel = nil
        @vector = nil
    end
    

    def initialize()
        initialize_fields
        @vector = BasicArrayListD.new()
        @defaultListModel = DefaultListModel.new()
    end
    

    def initDefaultModelList()
        @defaultListModel = DefaultListModel.new()
        size = @vector.size()
        (0...size).each do |index|
            moduleName = @vector.get(index)
            @defaultListModel.addElement(moduleName)
        end
    end
    

    def getListModel()
        return @defaultListModel
    end
    

    def add(string)
        @vector.add(string)
    end
    

    def remove(string)
        @vector.remove(string)
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"

