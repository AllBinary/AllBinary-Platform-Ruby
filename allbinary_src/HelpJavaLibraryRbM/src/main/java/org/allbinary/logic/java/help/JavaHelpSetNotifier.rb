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
        return defined?(@@vector) ? @@vector : nil
    end

    def self.vector=(value)
        @@vector = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class JavaHelpSetNotifier
    @@vector = BasicArrayListD.new()
end

