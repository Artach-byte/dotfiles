if status is-interactive
    set -gx EDITOR hx
    set -Ux EDITOR hx
    atuin init fish | source
end
