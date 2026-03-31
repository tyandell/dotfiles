function ghcd --description "Clone a GitHub repo and cd into it"
    if test (count $argv) -eq 1
        cd "$HOME/src/github.com/$argv[1]"
        return
    end

    if test (count $argv) -ne 2
        echo "Usage: ghcd <org> [<repo>]"
        return 1
    end

    set -l dir "$HOME/src/github.com/$argv[1]/$argv[2]"

    if not test -d "$dir"
        git clone "git@github.com:$argv[1]/$argv[2].git" "$dir"
        or return 1
    end

    cd "$dir"
end
