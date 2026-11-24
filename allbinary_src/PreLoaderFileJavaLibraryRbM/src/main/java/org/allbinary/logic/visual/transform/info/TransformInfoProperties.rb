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
# package org.allbinary.logic.visual.transform.info


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoProperties
    attr_accessor :name, :label, :description, :objectFileName, :objectConfigFileName, :templateFileName

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoProperties
        @name = nil unless instance_variable_defined?(:@name)
        @label = nil unless instance_variable_defined?(:@label)
        @description = nil unless instance_variable_defined?(:@description)
        @objectFileName = nil unless instance_variable_defined?(:@objectFileName)
        @objectConfigFileName = nil unless instance_variable_defined?(:@objectConfigFileName)
        @templateFileName = nil unless instance_variable_defined?(:@templateFileName)
    end
    

    def initialize(name, label, description, objectFileName, objectConfigFileName, templateFileName)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoProperties
        @name = name
        @label = label
        @description = description
        @objectFileName = objectFileName
        @templateFileName = templateFileName
        @objectConfigFileName = objectConfigFileName
    end
    

    def setName(value)
        @name = value
    end
    

    def setDescription(value)
        @description = value
    end
    

    def setViewFile(value)
        @objectFileName = value
    end
    

    def setTemplateFile(value)
        @templateFileName = value
    end
    

    def setObjectConfigFile(value)
        @objectConfigFileName = value
    end
    

    def getName()
        return @name
    end
    

    def getLabel()
        return @label
    end
    

    def getDescription()
        return @description
    end
    

    def getViewFile()
        return @objectFileName
    end
    

    def getTemplateFile()
        return @templateFileName
    end
    

    def getObjectConfigFile()
        return @objectConfigFileName
    end
end

end; end; end; end; end; end

