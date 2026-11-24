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

# require "javax/swing/DefaultListModel"
# require "javax/swing/ListModel"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class DefaultListModelHelper
    attr_accessor :defaultListModel, :vector

    def jfields_org_allbinary_input_automation_module_DefaultListModelHelper
        @defaultListModel = nil unless instance_variable_defined?(:@defaultListModel)
        @vector = nil unless instance_variable_defined?(:@vector)
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_DefaultListModelHelper
        @vector = ::Org::Allbinary::Util::BasicArrayListD.new()
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end

end; end; end; end; end

