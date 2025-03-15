# My Development Tools

my Development scripts are tested on Ubuntu 24.04

How to use this scripts:
1. go to your projects directory
2. clone this repo and enter the directory
3. use this command
    ```bash
    echo "source $(pwd)/dev.sh" >> $HOME/.bashrc
    ```

## Zephyr SDK

1. I use zephyr project without west tools, more tools sometimes introduce some sort of overhead though it might be easy to use. I'm pretty comfortable with cmake so using west tools is not necessarily important at this time.
2. I use Zephyr SDK version 0.17.0
3. I usually use [freestanding](https://docs.zephyrproject.org/latest/develop/application/index.html#application-types) Application type for my application / firmware development. Why ? because it flexible and I usually use path such as $HOME/projects/devtools for my development tools.


