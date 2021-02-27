# encore_trucking
A simple framework-agnostic FiveM trucking script built for [Encore RP](http://discord.encorerp.com). Players rent a semi-truck and then perform various deliveries ranging from automobile deliveries to PDM, logging deliveries, fuel deliveries, etc.

## Installation

Add the `encore_trucking` folder to your FiveM resources folder and ensure the script is started.

## Configuration

encore_trucking is framework-agnostic, so you'll need to add a bit of code to get it working with your money system. There are three methods, `getMoney`, `addMoney`, and `removeMoney` in `server/server.lua` that you should edit to perform the correct actions for your framework.

You can control almost everything about the script using the `config.lua` file. Changing locations, adding new routes, changing prices and payouts, etc.

## Support

Support for specific framework integrations is not provided. If you need general support, or have found a bug, feel free to open an issue or submit a pull request.

## License

encore_trucking is licensed under the MIT license. See [LICENSE.md](LICENSE.md) for more details.
