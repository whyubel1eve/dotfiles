:sparkles: pretty cool **neovim** config
- Also provide neovide(GUI) configuration
    - set these in `~/.zprofile`, and do the commands in comment
    ```sh
    # For init window size and tabs, Run:
    #   neovide --geometry=120x32
    #   neovide --notabs
    export NEOVIDE_FRAME=transparent
    ```
    - Optionally, add in `~/.zshrc`:
    ```sh
    alias vi = 'nvim' 
    alias v = 'neovide'
    ```
