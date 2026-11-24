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

# require "java/awt/Point"
# require "java/awt/Dimension"
# require "java/awt/event/ActionEvent"
# require "java/io/File"
# require "java/net/URI"
# require "java/net/URL"
# require "javax/help/CSH"
# require "javax/help/HelpBroker"
# require "javax/help/HelpSet"
# require "javax/swing/JLabel"

module ::Org; module Allbinary; module Logic; module Java; module Help

class JavaHelpUtil
    attr_accessor :logUtil, :point, :dimension, :contextSensitiveHelpActionEvent, :commonStrings

    def jfields_org_allbinary_logic_java_help_JavaHelpUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @point = Point.new(0, 0)
        @dimension = Dimension.new(640, 480)
        @contextSensitiveHelpActionEvent = ActionEvent.new(JLabel.new(), ActionEvent::ACTION_FIRST, nil)
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return JavaHelpUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_java_help_JavaHelpUtil
    end
    

    def getHelpSet_j1_1(filePath)
        begin
            helpSetURI = File.new(filePath).toURI()
            helpSetURL = helpSetURI.toURL()
            return self.getHelpSet(helpSetURL)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, JavaHelpUtil.getInstance(), "set", e)
            return nil
        end
    end
    

    def getHelpSet_j1_2(url)
        begin
            return HelpSet.new(nil, url)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, JavaHelpUtil.getInstance(), "set", e)
            return nil
        end
    end

    def getHelpSet(*java_overload_args)
        return getHelpSet_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getHelpSet takes #{java_overload_args.length} arguments"
    end

    def getHelpSet_j1(*java_overload_args)
        return getHelpSet_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return getHelpSet_j1_2(*java_overload_args)
    end
    

    def show(helpSet)
        begin
            helpBroker = helpSet.createHelpBroker()
            helpBroker.setLocation(@point)
            helpBroker.setSize(@dimension)
            CSH::DisplayHelpFromSource.new(helpBroker).actionPerformed(@contextSensitiveHelpActionEvent)
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
        JavaHelpUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        JavaHelpUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = JavaHelpUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "JavaHelpUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    JavaHelpUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

