require 'active_support'
require 'yaml'
require 'erb'
require 'colorize'
require_relative 'generator/doc'

def working_dir
  "#{File.expand_path File.dirname(__FILE__)}"
end

def wikiposit_dir_name
  'temp_wikiposit'
end

def quandl_doc_dir
  "doc"
end

def slate_dir
  "#{working_dir}/.."
end

def get_repo
  Dir.chdir("#{working_dir}") do
    commands = []
    commands << "rm -rfv #{wikiposit_dir_name}"
    commands << "git init #{wikiposit_dir_name}"
    commands << "cd #{wikiposit_dir_name}"
    commands << 'git remote add -f origin git@github.com:quandl/wikiposit.git'
    commands << 'git config core.sparseCheckout true'
    commands << 'echo "doc/api" >> .git/info/sparse-checkout'
    commands << 'git pull origin master'
    system('/bin/bash', '-c', '-e', commands.join(' && '))
    $?
  end
end

status = get_repo

puts "Error: Failed to checkout auto-generated api docs with exit code #{status}".red if status.exitstatus != 0

doc_md_generator = Quandl::Doc.new(nil, working_dir, wikiposit_dir_name, quandl_doc_dir)

markdown = doc_md_generator.to_markdown

File.open("#{slate_dir}/source/index.md", 'w') { |file| file.write(markdown) }

doc_md_generator.files_not_included_in_config
