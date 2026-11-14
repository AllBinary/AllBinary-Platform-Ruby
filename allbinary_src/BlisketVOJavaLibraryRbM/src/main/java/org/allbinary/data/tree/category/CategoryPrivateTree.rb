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
# package org.allbinary.data.tree.category

require "java/lang/Object"

class CategoryPrivateTree
    attr_accessor :logUtil, :categoryFactoryInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @categoryFactoryInterface = nil
    end
    

    def initialize(categoryFactoryInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, "CategoryPrivateTree(CategoryFactoryInterface categoryFactoryInterface)")
        end
        @categoryFactoryInterface = categoryFactoryInterface
    end
    

    # throws Exception
    def save(categoryInterface)
        java_monitor.synchronize do
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Saving Category File: " + (categoryInterface.getFilePath()).to_s, self, "save()")
        end
        document = CategoryComponent.new(categoryInterface).toXmlDoc()
        cryptFileWriter = CryptFileWriter.new(CategoryData.getInstance().UNCRYPTED_EXTENSION, CategoryData.getInstance().ENCRYPTED_EXTENSION)
        cryptFileWriter.write(categoryInterface.getFilePath(), document)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("end", self, "save()")
        end
        end
    end
    

    # throws Exception
    def delete(categoryInterface)
        java_monitor.synchronize do
        if categoryInterface.isLeaf()
            categoryFile = AbFile.createAbFileFromAbPath(categoryInterface.getFilePath())
            if categoryFile.delete()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF("Removed: " + (categoryInterface.getFilePath()).to_s, self, "delete(CategoryInterface)")
                end
            end
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF("Not a leaf unable to remove", self, "delete(CategoryInterface)")
            end
        end
        end
    end
end

autoload :CategoryComponent, "org/allbinary/business/category/CategoryComponent"
autoload :CategoryData, "org/allbinary/business/category/CategoryData"
autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface"
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CryptFileWriter, "org/allbinary/logic/control/crypt/file/CryptFileWriter"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"

