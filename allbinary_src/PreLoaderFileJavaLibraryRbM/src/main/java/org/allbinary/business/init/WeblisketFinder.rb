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
# package org.allbinary.business.init


class WeblisketFinder
    attr_accessor :logUtil, :commonStrings, :subDirectory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @subDirectory = SubDirectory.getInstance()
    end
    

    def self.getInstance()
        return WeblisketFinder.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def findAll(path)
        begin
            @logUtil.putF(@commonStrings.START, self, "findAll")
            return @subDirectory.search(WeblisketFinder::KEY, AbFile.createAbFile(path))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "findAll", e)
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "findAll", e)
            end
            return nil
        end
    end
    

    def getInstallationPath(file)
        begin
            filePath = file.getPath()
            end_ = (filePath.index(KEY) || -1)
            if end_ < 0
                return nil
            end
            return filePath[0...end_]
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstallationPath", e)
            end
            return nil
        end
    end
    

    # throws Exception
    def self.main(args)
        stringUtil = StringUtil.getInstance()
        vector = WeblisketFinder.getInstance().findAll(stringUtil.EMPTY_STRING)
        puts(vector.size())
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
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/directory/SubDirectory"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "java/lang/System"

class WeblisketFinder
    @@instance = WeblisketFinder.new()
    KEY = "installerdata.dat"
end

