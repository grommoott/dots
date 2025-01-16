if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
    string join '' -- (set_color green) (prompt_pwd) (set_color blue) ' $ ' (set_color normal) ''
end

function fish_greeting
    cowsay "это чо, темринал&?"
end
