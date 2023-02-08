export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE

catipynb() {
    cat "$@" |
    jq -r '.cells[]
           | if (.cell_type == "markdown")
             then ["\n\"\"\"\n"] + .source + ["\n\"\"\""]
             else ["\n#[" + (.execution_count | tostring) + "]\n"] + .source
             end
           | join("")'
}

# Removes color override for other-writable directories (all dirs in NTFS mounts are other-writable)
export LS_COLORS="$(echo "$LS_COLORS" | sed 's/ow=[^:]*/ow=01;34/' | head -n1)"
