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


module ::Org; module Allbinary; module Business; module Init

class WeblisketFinder
    attr_accessor :logUtil, :commonStrings, :subDirectory

    def jfields_org_allbinary_business_init_WeblisketFinder
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @subDirectory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::SubDirectory.getInstance()
    end
    

    def self.getInstance()
        return WeblisketFinder.instance
    end
    

    def initialize()
        jfields_org_allbinary_business_init_WeblisketFinder
    end
    

    def findAll(path)
        begin
            @logUtil.putF(@commonStrings.START, self, "findAll")
            return @subDirectory.search(WeblisketFinder::KEY, ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(path))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "findAll", e)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstallationPath", e)
            end
            return nil
        end
    end
    

    # throws Exception
    def self.main(args)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        vector = WeblisketFinder.getInstance().findAll(stringUtil.EMPTY_STRING)
        puts(vector.size())
    end

    def self.instance()
        WeblisketFinder.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        WeblisketFinder.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:KEY, "installerdata.dat")
        begin
            @@instance = WeblisketFinder.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WeblisketFinder"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:KEY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :SubDirectory, "org/allbinary/logic/io/file/directory/SubDirectory" unless const_defined?(:SubDirectory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
require "java/lang/System"

begin
    WeblisketFinder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

