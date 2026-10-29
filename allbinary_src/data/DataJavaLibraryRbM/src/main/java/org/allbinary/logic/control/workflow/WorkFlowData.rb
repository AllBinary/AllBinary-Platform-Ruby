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
# package org.allbinary.logic.control.workflow


class WorkFlowData
    attr_accessor :WORKFLOWS, :WORKFLOW, :NAME, :DATA

    def initialize_fields
        @WORKFLOWS = "WORKFLOWS"
        @WORKFLOW = "WORKFLOW"
        @NAME = "WORKFLOW_NAME"
        @DATA = "WORKFLOW_DATA"
    end
    

    def self.getInstance()
        return WorkFlowData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class WorkFlowData
    @@instance = WorkFlowData.new()
end

