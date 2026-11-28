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
require "java/lang/JavaClass"
# require "java/awt/GridLayout"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JScrollPane"
# require "javax/swing/JTextArea"

module ::Org; module Allbinary; module Logic; module Communication; module Log

class GuiLog
    attr_accessor :logFormatUtil, :commonStrings

    def jfields_org_allbinary_logic_communication_log_GuiLog
        @logFormatUtil = LogFormatUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_GuiLog
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
    

    def put_j3_1(specialMessage, anyType, functionName)
        java_monitor.synchronize do
        return self.put(specialMessage, anyType, functionName, nil)
        end
    end
    

    def put_j4_1(specialMessage, anyType, functionName, exception)
        java_monitor.synchronize do
        begin
            data = @logFormatUtil.get(specialMessage, anyType.class.java_name, functionName, exception)
            self.showDialog(data)
            puts(data)
            return data
        rescue StandardError => e
            PreLogUtil.putOE(@commonStrings.EXCEPTION, self, "put", e)
            return "Logging Error"
        end
        end
    end
    

    def put_j3_2(specialMessage, className, functionName)
        java_monitor.synchronize do
        return self.put(specialMessage, className, functionName, nil)
        end
    end
    

    def put_j4_2(specialMessage, className, functionName, exception)
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

    def put(*java_overload_args)
        return put_j3(*java_overload_args) if java_overload_args.length == 3
        return put_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method put takes #{java_overload_args.length} arguments"
    end

    def put_j3(*java_overload_args)
        return put_j3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return put_j3_1(*java_overload_args)
    end

    def put_j4(*java_overload_args)
        return put_j4_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String)) && !(java_overload_args[3].is_a?(::Numeric) || java_overload_args[3] == true || java_overload_args[3] == false || java_overload_args[3].is_a?(::Array))
        return put_j4_1(*java_overload_args)
    end

    def self.instance()
        GuiLog.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GuiLog.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GuiLog.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GuiLog"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false)
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false)
require "java/lang/System"

begin
    GuiLog.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

