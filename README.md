cucumber-ruby-app-browserstack
=====================
![BrowserStack Logo](https://d98b8t1nnulk5.cloudfront.net/production/images/layout/logo-header.png?1469004780)

Code samples to get started with Appium tests for your Native App using the Cucumber framework on BrowserStack, using the **BrowserStack Ruby SDK**.

## Setup

### Requirements

1. Ruby: If you don't have Ruby installed, follow the instructions given [here](https://www.ruby-lang.org/en/documentation/installation/)
2. Bundler: If you don't have Bundler installed, follow the instructions given [here](https://bundler.io/)

### Install the dependencies

To install the dependencies for Android tests, run:
```sh
cd android/examples
bundle install
```

Or, to install the dependencies for iOS tests, run:
```sh
cd ios/examples
bundle install
```

---

## Configuration

### Set up `browserstack.yml`

All BrowserStack configuration is managed through a single `browserstack.yml` file located at `android/examples/browserstack.yml`.

```yaml
userName: YOUR_BROWSERSTACK_USERNAME   # or set BROWSERSTACK_USERNAME env var
accessKey: YOUR_BROWSERSTACK_ACCESS_KEY # or set BROWSERSTACK_ACCESS_KEY env var

app: bs://<app-id>                      # or set BROWSERSTACK_APP_ID env var

projectName: First Cucumber Android Project
buildName: browserstack-build-1

platforms:
  - deviceName: Google Pixel 8 Pro
    osVersion: "14.0"
    platformName: android

debug: true

browserStackLocal: false  # set to true for local testing
```


### For local testing

Set `browserStackLocal: true` in `browserstack.yml`. 

```yaml
browserStackLocal: true
```

---

## Getting Started

All tests are run from the `android/examples/` directory using the `browserstack-sdk exec` CLI.

### **Run first test:**

```sh
cd android/examples
bundle exec browserstack-sdk exec cucumber run-first-test/features
```

### **Run parallel tests:**

Ensure `platforms:` in `browserstack.yml` has multiple device entries, then run:

```sh
cd android/examples
bundle exec browserstack-sdk exec cucumber run-parallel-tests/features
```

### **Run local test:**

Ensure `browserStackLocal: true` is set in `browserstack.yml`, then run:

```sh
cd android/examples
bundle exec browserstack-sdk exec cucumber run-local-test/features
```

---

## Getting Help

If you are running into any issues or have any queries, please check the [BrowserStack Support page](https://www.browserstack.com/support/app-automate) or [get in touch with us](https://www.browserstack.com/contact).

Note: For other test frameworks supported by App Automate, refer to our [Developer documentation](https://www.browserstack.com/docs/).

## Additional Resources

* [BrowserStack Ruby SDK](https://www.browserstack.com/docs/automate/selenium/sdk-config)
* [Cucumber](https://cucumber.io/)
* [Appium](https://appium.io/)