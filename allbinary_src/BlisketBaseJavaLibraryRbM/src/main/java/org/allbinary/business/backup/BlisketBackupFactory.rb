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
# package org.allbinary.business.backup


class BlisketBackupFactory
    attr_accessor :logUtil, :stringUtil, :commonStrings, :directory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stringUtil = StringUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @directory = Directory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BlisketBackupFactory.instance
    end
    

    # throws Exception
    def getFileBasicArrayList(pathString)
        path = AbPath.new(pathString, @stringUtil.EMPTY_STRING)
        file = AbFile.createAbFileFromAbPath(path)
        return @directory.search(file, true)
    end
    

    def backup()
        begin
            @logUtil.putF(@commonStrings.START, self, "backup()")
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getWebappPath())
            stringBuffer.append(PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = self.getFileBasicArrayList(backupPath)
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backup.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
        end
    end
    

    def backupViews()
        begin
            @logUtil.putF(@commonStrings.START, self, "backupViews()")
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getWebappPath())
            stringBuffer.append(PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = BasicArrayListD.new()
            storeFrontsEntity = StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance()
            storeFrontNamesBasicArrayList = storeFrontsEntity.getStoreFrontNames()
            size = storeFrontNamesBasicArrayList.size()
            nextStore = nil
            viewsPath = nil
            (0...size).each do |index|
                nextStore = storeFrontNamesBasicArrayList.get(index)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(URLGLOBALS.getWebappPath())
                stringBuffer.append(PATH_GLOBALS.getInstance().VIEWS_PATH)
                stringBuffer.append(nextStore)
                viewsPath = stringBuffer.to_s
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Backup Store Views: ")
                stringBuffer.append(nextStore)
                stringBuffer.append(" from: ")
                stringBuffer.append(viewsPath)
                PreLogUtil.put(stringBuffer.to_s, self, "backupViews()")
                fileBasicArrayList.addAllList(self.getFileBasicArrayList(viewsPath))
            end
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backupViews.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backupViews()", e)
        end
    end
    

    def backupResources()
        begin
            @logUtil.putF(@commonStrings.START, self, "backupResources()")
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getWebappPath())
            stringBuffer.append(PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = BasicArrayListD.new()
            storeFrontsEntity = StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance()
            storeFrontNamesBasicArrayList = storeFrontsEntity.getStoreFrontNames()
            size = storeFrontNamesBasicArrayList.size()
            nextStore = nil
            storeFrontInterface = nil
            resourcesPath = nil
            (0...size).each do |index|
                nextStore = storeFrontNamesBasicArrayList.get(index)
                storeFrontInterface = storeFrontsEntity.getStoreFrontInterface(nextStore)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(URLGLOBALS.getWebappPath())
                stringBuffer.append(storeFrontInterface.getCurrentHostNamePath())
                stringBuffer.append(storeFrontInterface.getCategoryPath())
                resourcesPath = stringBuffer.to_s
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Backup Store Resrouces: ")
                stringBuffer.append(nextStore)
                stringBuffer.append(" from: ")
                stringBuffer.append(resourcesPath)
                PreLogUtil.put(stringBuffer.to_s, self, "backupResources()")
                fileBasicArrayList.addAllList(self.getFileBasicArrayList(resourcesPath))
            end
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backupResources.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backupResources()", e)
        end
    end
    

    def backupJsps()
        begin
            @logUtil.putF(@commonStrings.START, self, "backupJsps()")
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getWebappPath())
            stringBuffer.append(PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = BasicArrayListD.new()
            storeFrontsEntity = StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance()
            storeFrontNamesBasicArrayList = storeFrontsEntity.getStoreFrontNames()
            size = storeFrontNamesBasicArrayList.size()
            nextStore = nil
            (0...size).each do |index|
                nextStore = storeFrontNamesBasicArrayList.get(index)
                PreLogUtil.put("Backup Store Jsps: " + nextStore, self, "backupJsps()")
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(URLGLOBALS.getWebappPath())
                stringBuffer.append(nextStore)
                fileBasicArrayList.addAllList(self.getFileBasicArrayList(stringBuffer.to_s))
            end
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backupJsps.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backupJsps()", e)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def backup(fileBasicArrayList, zipFile)
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("ZipFile: ")
            stringBuffer.append(zipFile)
            stringBuffer.append(" BasicArrayList: ")
            stringBuffer.appendint(fileBasicArrayList.size())
            PreLogUtil.put("Creating Backup Zip File: " + stringBuffer.to_s, self, "backup()")
            ZipFileUtil.getInstance().create(zipFile, fileBasicArrayList)
            @logUtil.putF("Created Backup Zip File", self, "backup()")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity"
require "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory"
require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/file/zip/ZipFileUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class BlisketBackupFactory
    @@instance = BlisketBackupFactory.new()
end

