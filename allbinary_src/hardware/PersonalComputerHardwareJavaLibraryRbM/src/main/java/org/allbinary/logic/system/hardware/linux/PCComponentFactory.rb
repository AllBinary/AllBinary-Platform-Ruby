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
# package org.allbinary.logic.system.hardware.linux


class PCComponentFactory
    attr_accessor :logUtil, :componentFactory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @componentFactory = ComponentFactory.getInstance()
    end
    

    def self.getInstance()
        return PCComponentFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(component, componentData)
        begin
            if component != nil
                if (component <=> @componentFactory.ETHERNET.to_s) == 0
                    return Ethernet.new(componentData)
                elsif (component <=> @componentFactory.BRIDGE.to_s) == 0
                    return Bridge.new(componentData)
                elsif (component <=> @componentFactory.IDE.to_s) == 0
                    return HardDriveController.new(componentData)
                elsif (component <=> @componentFactory.MULTIMEDIA.to_s) == 0
                    return Media.new(componentData)
                elsif (component <=> @componentFactory.SCSI.to_s) == 0
                    return HardDriveController.new(componentData)
                elsif (component <=> @componentFactory.USB.to_s) == 0
                    return Usb.new(componentData)
                elsif (component <=> @componentFactory.VGA.to_s) == 0
                    return Video.new(componentData)
                elsif (component <=> @componentFactory.PCI.to_s) == 0
                    return PCI.new(componentData)
                end
            end
            return Unknown.new(componentData)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            return Unknown.new(commonStrings.EXCEPTION)
        end
    end
    

    def getComponentType(component)
        if (component.index(@componentFactory.ETHERNET.to_s) || -1) >= 0
            return @componentFactory.ETHERNET.to_s
        elsif (component.index(@componentFactory.BRIDGE.to_s) || -1) >= 0
            return @componentFactory.BRIDGE.to_s
        elsif (component.index(@componentFactory.IDE.to_s) || -1) >= 0
            return @componentFactory.IDE.to_s
        elsif (component.index(@componentFactory.MULTIMEDIA.to_s) || -1) >= 0
            return @componentFactory.MULTIMEDIA.to_s
        elsif (component.index(@componentFactory.SCSI.to_s) || -1) >= 0
            return @componentFactory.SCSI.to_s
        elsif (component.index(@componentFactory.USB.to_s) || -1) >= 0
            return @componentFactory.USB.to_s
        elsif (component.index(@componentFactory.VGA.to_s) || -1) >= 0
            return @componentFactory.VGA.to_s
        elsif (component <=> @componentFactory.PCI.to_s) == 0
            return @componentFactory.PCI.to_s
        end
        return @componentFactory.UNKNOWN.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/system/hardware/components/ComponentFactory"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
require "org/allbinary/logic/system/hardware/components/linux/Bridge"
require "org/allbinary/logic/system/hardware/components/linux/Ethernet"
require "org/allbinary/logic/system/hardware/components/linux/HardDriveController"
require "org/allbinary/logic/system/hardware/components/linux/Media"
require "org/allbinary/logic/system/hardware/components/linux/PCI"
require "org/allbinary/logic/system/hardware/components/linux/Unknown"
require "org/allbinary/logic/system/hardware/components/linux/Usb"
require "org/allbinary/logic/system/hardware/components/linux/Video"
require "org/allbinary/string/CommonStrings"

class PCComponentFactory
    @@instance = PCComponentFactory.new()
end

