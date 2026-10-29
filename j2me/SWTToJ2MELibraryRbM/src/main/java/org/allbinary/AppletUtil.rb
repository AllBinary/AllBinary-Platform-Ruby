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
# package org.allbinary


#import org.allbinary.logic.communication.log.PreLogUtil;
class AppletUtil
    

    def initialize()
    end
    

    def self.setApplet()
        AppletUtil.applet = true
    end
    

    def self.isAppletLoader(anyType)
        return AppletUtil.applet
    end

    def self.applet()
        return defined?(@@applet) ? @@applet : nil
    end

    def self.applet=(value)
        @@applet = value
    end
end

class AppletUtil
    @@applet = false
end

