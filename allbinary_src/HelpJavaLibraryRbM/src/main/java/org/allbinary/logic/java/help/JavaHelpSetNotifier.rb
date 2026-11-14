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

# require "java/net/URL"
# require "javax/help/HelpSet"

class JavaHelpSetNotifier
    

    def initialize()
    end
    

    def self.get()
        return JavaHelpSetNotifier.vector
    end
    

    def self.isNotified(helpSet)
        isNotified = false
        url = helpSet.getHelpSetURL()
        size = JavaHelpSetNotifier.vector.size()
        urlArray = JavaHelpSetNotifier.vector.toArray()
        (0...size).each do |i|
            nextURL = urlArray[i]
            if (url.to_s <=> nextURL.to_s) == 0
                isNotified = true
            end
        end
        JavaHelpSetNotifier.vector.add(url)
        return isNotified
    end

    def self.vector()
        JavaHelpSetNotifier.java_static_fields unless @java_static_fields_started
        return defined?(@@vector) ? @@vector : nil
    end

    def self.vector=(value)
        JavaHelpSetNotifier.java_static_fields unless @java_static_fields_started
        @@vector = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@vector = BasicArrayListD.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "JavaHelpSetNotifier"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    JavaHelpSetNotifier.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

