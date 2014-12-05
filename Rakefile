desc 'Initialize a repo, compile YCM and add a symlink to .vimrc'
task :setup do
  system('git submodule update --init --recursive')
  system('cd bundle/YouCompleteMe')
  system('./install.sh')
  system('ln -s ~/.vim/vimrc ~/.vimrc')
end

desc 'Pull changes recursively with submodules'
task :pull do
  system('git pull')
  system('git submodule update --init --recursive')
end

desc 'Update plugins'
task :upgrade do
  system('git submodule update --remote --merge')
end
