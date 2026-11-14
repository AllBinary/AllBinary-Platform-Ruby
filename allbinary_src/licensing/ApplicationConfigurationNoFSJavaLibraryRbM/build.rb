# Checks the generated Ruby sources compile, copies them to a library directory and checks each file loads.
#
# Usage: ruby build.rb SourceDir LibDir LoadCheck FailOnError [DependencySourceDir...]
#
# The generated code loads classes with require "org/allbinary/string/CommonSeps" so the library directory keeps the Java package directories.

require "fileutils"

def find_sources(source_dir)
    Dir.glob("**/*.rb", base: source_dir).sort
end

def compile_sources(source_dir, lib_dir, sources)
    failures = []
    sources.each do |source|
        path = File.join(source_dir, source)
        begin
            RubyVM::InstructionSequence.compile_file(path)
            FileUtils.mkdir_p(File.dirname(File.join(lib_dir, source)))
            FileUtils.cp(path, File.join(lib_dir, source))
        rescue SyntaxError => error
            warn error.message
            failures << "compile #{path}"
        end
    end
    failures
end

def load_sources(lib_dir, dependency_dirs, sources)
    $LOAD_PATH.unshift(*([lib_dir] + dependency_dirs))
    failures = []
    sources.each do |source|
        feature = source.delete_suffix(".rb")
        begin
            require feature
        rescue ScriptError, StandardError => error
            warn "#{feature}: #{error.class}: #{error.message.lines.first&.strip}"
            failures << "load #{feature}"
        end
    end
    failures
end

if ARGV.length < 4
    warn "Usage: ruby build.rb SourceDir LibDir LoadCheck FailOnError [DependencySourceDir...]"
    exit 2
end

$stdout.sync = true
source_dir = File.expand_path(ARGV[0])
lib_dir = File.expand_path(ARGV[1])
load_check = ARGV[2] == "true"
fail_on_error = ARGV[3] == "true"
dependency_dirs = ARGV[4..].map { |dir| File.expand_path(dir) }.select do |dir|
    next true if File.directory?(dir)
    warn "Warning: Ruby dependency source directory does not exist: #{dir}"
    false
end

FileUtils.rm_rf(lib_dir)
FileUtils.mkdir_p(lib_dir)

sources = find_sources(source_dir)
failures = compile_sources(source_dir, lib_dir, sources)
puts "Ruby files compiled: #{sources.length - failures.length} of #{sources.length}"

if load_check
    load_failures = load_sources(lib_dir, dependency_dirs, sources)
    puts "Ruby files loaded: #{sources.length - load_failures.length} of #{sources.length}"
    failures += load_failures
end

unless failures.empty?
    warn "Ruby build failures: #{failures.length}"
    failures.each { |failure| warn "  #{failure}" }
    exit 1 if fail_on_error
end
