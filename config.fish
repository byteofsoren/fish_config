function dlmv --description 'Moves n last files to. Example: dlmv 2 .;# will move 2 latest files to this direcory'
    mv ~/Downloads/(ls ~/Downloads/ -t | head -n $argv[1]) $argv[2]
end

function sc --description 'Starts a fuzzy search for config file to edit'
    du -a ~/.config/* | awk '{print $2}' | grep -v '.git' | fzf | xargs -r $EDITOR;
end

function libs --description 'Copies a file from ~/.libs/ folder to the current folder'
    cp ( du -a ~/.mylib/* | awk '{print $2}' | grep -v '.git' | fzf ) .
end


function cu --description 'Go current schol cource'
    cd ( du -a /home/r00tr4t/_curent | awk '{print $2}' | grep -v '.git' | fzf )
end


function lslarge --description 'Lists the n laregst files. Example: lslarge . 10;# list the 10 lagrest files in this directory.'
    du -ha $argv[1] | sort -n -r | head -n $argv[2]
    du -hxs $argv[1] | sort -n -r | head -n $argv[2]
end

set --universal fish_user_paths $fish_user_paths /home/r00tr4t/bin/Xilinx/Vivado/2018.3/bin/
