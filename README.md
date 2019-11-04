
# React Native for Plaid Link (iOS)

### Implementation recommended by Plaid API

**Please refer to the [official repo](https://github.com/plaid/plaid-link-examples/tree/master/react-native) for official source code**

⚛︎📱 Integration and use of Plaid Link for React Native.
Currently only iOS is supported.

:warning: Note that this is the React Native bridge for Link officially supported by Plaid, but is very different
from the module with the same name available on [npmjs](https://www.npmjs.com/package/react-native-plaid-link);
we strongly recommend favoring this React Native bridge.

## Prerequisites

To complete the steps in this example the following software is needed:

* [Xcode](https://developer.apple.com/xcode/)
* [yarn](https://yarnpkg.com/) (we recomment using nvm to install yarn on macOS: `brew install nvm; nvm install 8; nvm use 8; npm -g install yarn`)

## Using React Native for Plaid Link

* Add this `react-native-plaid-link` component to your react-native project and install the necessary dependencies:
```sh
  % cd $PATH_TO_YOUR_REACT_NATIVE_PROJECT
  % yarn add julioxavierr/react-native-plaid-link
  % yarn install
  % yarn react-native link react-native-plaid-link
```
* Integrate the native Plaid Link for iOS SDK (LinkKit.framework) into the iOS part of your react-native project, see the [documentation](https://plaid.com/docs/link/ios/) for details.
* In your `App.js` import Plaid Link using:
	`import PlaidLink from 'react-native-plaid-link';`
* Create a `linkHandler` object (we recommend doing so in `componentDidMount()`) and replace any of the placeholder `<#VARIABLE#>`s in the example below according to your setup (for details see the [Plaid Link documentation](https://plaid.com/docs/quickstart/#client-side-link-configuration)):
```js
    this.linkHandler = PlaidLink.create({
      key: '<#PUBLIC_KEY#>',
      env: '<#ENVIRONMENT#>',
      product: ['<#PRODUCT#>'],
      clientName: '<#CLIENT NAME#>',
      onSuccess: this.onSuccess,
      onExit: this.onExit,
      onEvent: this.onEvent,
    });
```
* Next, when you would like to show the Plaid Link flow call `open()` on the `linkHandler`, e.g. `this.linkHandler.open();` which will modally present Plaid Link and guide the user through the process of linking their account with your application through Plaid
* Once the user has completed, exited, or errored out of the flow the appropriate callback method is invoked
* A detailed working example can be found in [`react-native/demo/App.js`](/react-native/demo/App.js)
