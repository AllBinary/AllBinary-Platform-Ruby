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
require "java/lang/JavaOverload"
require "org/allbinary/data/tree/category/CategoryModifierTreeInterface"
require "org/allbinary/data/tree/category/CategoryPrivateTree"

module ::Org; module Allbinary; module DataPackage; module Tree; module Category

class CategoryModifierTree < CategoryPrivateTree
    include CategoryModifierTreeInterface
    attr_accessor :logUtil, :commonStrings, :directory

    def jfields_org_allbinary_data_tree_category_CategoryModifierTree
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @directory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance()
    end
    

    def initialize(categoryFactoryInterface)
        super(categoryFactoryInterface)
        jfields_org_allbinary_data_tree_category_CategoryModifierTree
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(@commonStrings.START, self, "CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)")
        end
    end
    

    def insert(parentCategoryInterface, newChildCategoryInterface)
        java_monitor.synchronize do
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                @logUtil.putF("Inserting", self, "insert()")
            end
            if parentCategoryInterface.isValid()
                parentCategoryInterface.addChild(newChildCategoryInterface)
                directoryToBeCreatedAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(newChildCategoryInterface.getRootFilePath().to_s + newChildCategoryInterface.getPath().to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
                @directory.create(directoryToBeCreatedAbPath)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                    @logUtil.putF("Saving", self, "insert()")
                end
                self.save(parentCategoryInterface)
                self.save(newChildCategoryInterface)
            else
                raise StandardError.new("Will Not Add Null Category")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "insert", e)
            end
        end
        end
    end
    java_overload :insert, 2
    

    def delete(parentCategoryInterface, existingChildCategoryInterface)
        java_monitor.synchronize do
        begin
            if parentCategoryInterface.isValid()
                parentCategoryInterface.addChild(existingChildCategoryInterface)
                directoryToBeDeletedAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(existingChildCategoryInterface.getRootFilePath().to_s + existingChildCategoryInterface.getPath().to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
                self.delete(existingChildCategoryInterface)
                parentCategoryInterface.removeChild(existingChildCategoryInterface)
                self.save(parentCategoryInterface)
                @directory.remove(directoryToBeDeletedAbPath)
            else
                raise StandardError.new("Will Not Add Null Category")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
        end
    end
    java_overload :delete, 2
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface" unless const_defined?(:CategoryFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

