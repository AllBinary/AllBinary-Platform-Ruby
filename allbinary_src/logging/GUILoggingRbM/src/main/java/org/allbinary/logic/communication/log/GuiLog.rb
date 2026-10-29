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
# package org.allbinary.logic.communication.log

require "java/lang/Object"
# require "java/awt"
# require "javax/swing"

class GuiLog
    attr_accessor :logFormatUtil, :commonStrings

    def initialize_fields
        @logFormatUtil = LogFormatUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return GuiLog.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def showDialog(msg)
        java_monitor.synchronize do
        error = JDialog.new()
        size = msg.length * 9
        x = size
        if x > 550
            x = 550
        end
        error.getContentPane().setLayout(GridLayout.new(1, 1))
        if size > 255
            y = 550
            error.setSize(x, y)
            error.getContentPane().add(JScrollPane.new(JTextArea.new(msg)))
        elsif size > 0
            y = 50
            error.setSize(x, y)
            error.getContentPane().add(JScrollPane.new(JLabel.new(msg)))
        end
        error.show()
        end
    end
    

    def put(specialMessage, anyType, functionName)
        java_monitor.synchronize do
        return self.put(specialMessage, anyType, functionName, nil)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def put(specialMessage, anyType, functionName, exception)
        java_monitor.synchronize do
        begin
            data = @logFormatUtil.get(specialMessage, anyType.class.name, functionName, exception)
            self.showDialog(data)
            puts(data)
            return data
        rescue StandardError => e
            PreLogUtil.putOE(@commonStrings.EXCEPTION, self, "put", e)
            return "Logging Error"
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def put(specialMessage, className, functionName)
        java_monitor.synchronize do
        return self.put(specialMessage, className, functionName, nil)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def put(specialMessage, className, functionName, exception)
        java_monitor.synchronize do
        begin
            data = @logFormatUtil.get(specialMessage, className, functionName, exception)
            self.showDialog(data)
            puts(data)
            return data
        rescue StandardError => e
            PreLogUtil.putOE(@commonStrings.EXCEPTION, self, "put", e)
            return "Logging Error"
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogFormatUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "java/lang/System"

class GuiLog
    @@instance = GuiLog.new()
end

