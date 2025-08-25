# PHP Debugging Setup Guide for Neovim DAP

This guide will help you set up PHP debugging in Neovim using the Debug Adapter Protocol (DAP) with Xdebug.

## Prerequisites

1. **PHP** installed on your system
2. **Xdebug** extension installed and configured
3. **Node.js** installed (required for the debug adapter)

## Installation Steps

### 1. Install the PHP Debug Adapter

The debug adapter will be automatically installed via Mason when you restart Neovim and run `:Mason`. If it doesn't install automatically, you can install it manually:

```vim
:MasonInstall php-debug-adapter
```

### 2. Install and Configure Xdebug

#### On macOS with Homebrew:
```bash
# Install Xdebug
pecl install xdebug

# Or if you're using PHP installed via Homebrew:
brew install php
```

#### Find your php.ini file:
```bash
php --ini
```

#### Add Xdebug configuration to php.ini:
```ini
[xdebug]
zend_extension=xdebug
xdebug.mode=debug
xdebug.start_with_request=yes
xdebug.client_host=127.0.0.1
xdebug.client_port=9003
xdebug.log=/tmp/xdebug.log
```

#### Verify Xdebug installation:
```bash
php -m | grep xdebug
```

### 3. Restart Neovim

After making these changes, restart Neovim to load the new PHP debugging configuration.

## Usage

### Available Debug Configurations

When you press `<F5>` or run `:lua require('dap').continue()` in a PHP file, you'll see these options:

1. **Listen for Xdebug** - Listens for incoming Xdebug connections (most common)
2. **Launch currently open script** - Debugs the currently open PHP file
3. **Launch Built-in web server** - Starts PHP's built-in server with debugging enabled

### Key Bindings

| Key | Action |
|-----|--------|
| `<F5>` | Start/Continue debugging |
| `<F1>` | Step into |
| `<F2>` | Step over |
| `<F3>` | Step out |
| `<leader>b` | Toggle breakpoint |
| `<leader>B` | Set conditional breakpoint |
| `<F7>` | Toggle debug UI |
| `<leader>dps` | Start PHP debugging |
| `<leader>dpc` | Run to cursor |

### Basic Workflow

1. **Set breakpoints** in your PHP code using `<leader>b`
2. **Start debugging** with `<F5>`
3. **Choose a debug configuration** from the menu
4. **Step through your code** using F1, F2, F3
5. **Inspect variables** in the debug UI (opens automatically)

### For Web Applications

1. Set breakpoints in your PHP code
2. Start the "Listen for Xdebug" configuration (`<F5>` → select option 1)
3. Trigger your PHP script through your web browser or API client
4. Xdebug will connect to Neovim and pause at your breakpoints

### For CLI Scripts

1. Set breakpoints in your PHP code
2. Use "Launch currently open script" configuration (`<F5>` → select option 2)
3. The script will run and pause at your breakpoints

## Troubleshooting

### Common Issues

1. **"No debug adapter found"**
   - Make sure php-debug-adapter is installed: `:Mason` and check if it's listed
   - Restart Neovim after installation

2. **Xdebug not connecting**
   - Check if Xdebug is properly installed: `php -m | grep xdebug`
   - Verify port 9003 is not blocked by firewall
   - Check Xdebug logs: `tail -f /tmp/xdebug.log`

3. **Path mapping issues (for Docker/remote development)**
   - Configure path mappings in the debug configuration
   - Edit the pathMappings in `lua/custom/plugins/php-debug.lua`:
   ```lua
   pathMappings = {
     ["/var/www/html"] = "/path/to/your/local/project"
   }
   ```

### Testing Your Setup

Create a simple test file:

```php
<?php
// test.php
echo "Starting debug test\n";
$message = "Hello, World!";
echo $message . "\n";
echo "Debug test complete\n";
?>
```

1. Set a breakpoint on the `$message = "Hello, World!";` line
2. Use "Launch currently open script" to debug it
3. You should see the debugger pause at your breakpoint

## Configuration Customization

You can modify the debug configurations in `lua/custom/plugins/php-debug.lua` to suit your specific needs:

- Change ports
- Add environment variables
- Modify runtime arguments
- Set up Docker path mappings
- Add custom configurations

## Additional Resources

- [Xdebug Documentation](https://xdebug.org/docs/)
- [nvim-dap Documentation](https://github.com/mfussenegger/nvim-dap)
- [PHP Debug Adapter](https://github.com/xdebug/vscode-php-debug)
