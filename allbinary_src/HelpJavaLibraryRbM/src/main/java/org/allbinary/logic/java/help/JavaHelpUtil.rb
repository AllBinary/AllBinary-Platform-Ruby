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
# package org.allbinary.logic.java.help

# require "java/awt"
# require "java/awt/event/ActionEvent"
# require "java/io/File"
# require "java/net/URI"
# require "java/net/URL"
# require "javax/help/CSH"
# require "javax/help/HelpBroker"
# require "javax/help/HelpSet"
# require "javax/swing"

class JavaHelpUtil
    attr_accessor :logUtil, :point, :dimension, :contextSensitiveHelpActionEvent, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @point = Point.new(0, 0)
        @dimension = Dimension.new(640, 480)
        @contextSensitiveHelpActionEvent = ActionEvent.new(JLabel.new(), ActionEvent::ACTION_FIRST, nil)
        @commonStrings = CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return JavaHelpUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getHelpSet(filePath)
        begin
            helpSetURI = File.new(filePath).toURI()
            helpSetURL = helpSetURI.toURL()
            return self.getHelpSet(helpSetURL)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, JavaHelpUtil.getInstance(), "set", e)
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getHelpSet(url)
        begin
            return HelpSet.new(nil, url)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, JavaHelpUtil.getInstance(), "set", e)
            return nil
        end
    end
    

    def show(helpSet)
        begin
            helpBroker = helpSet.createHelpBroker()
            helpBroker.setLocation(@point)
            helpBroker.setSize(@dimension)
            DisplayHelpFromSource.new(helpBroker).actionPerformed(@contextSensitiveHelpActionEvent)
            @logUtil.putF("CSH Action", JavaHelpUtil.getInstance(), "show")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, JavaHelpUtil.getInstance(), "show", e)
        end
    end
    

    def self.main(args)
        begin
            javaHelpUtil = JavaHelpUtil.getInstance()
            javaHelpUtil.show(javaHelpUtil.getHelpSet("G:/mnt/bc/mydev/working/automation/InputAutomationJavaApplication/AllBinaryInputAutomationHelp/AllBinaryInputAutomation.hs"))
        rescue StandardError => e
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class JavaHelpUtil
    @@instance = JavaHelpUtil.new()
end

