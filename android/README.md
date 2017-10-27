## Setup
* Clone the repo
* Install dependencies `bundle install`
* Update `.config.yml` files inside the `config` directory with your [BrowserStack Username and Access Key](https://www.browserstack.com/accounts/settings).

## Running your tests
* Upload your Native App (.apk file) to BrowserStack servers using upload API:

  ```
  curl -u "username:accesskey" -X POST "https://api.browserstack.com/app-automate/upload" -F "file=@/path/to/app/file/Application-debug.apk"
  ```

* If you do not have an .apk file and looking to simply try App Automate, [you can download our sample app and upload](https://www.browserstack.com/app-automate/sample-apps/android/WikipediaSample.apk)
to the BrowserStack servers using the above API.
* For running local tests, you can use our [local sample app](https://www.browserstack.com/app-automate/sample-apps/android/LocalSample.apk).
* Update the desired capability "app" with the App URL returned from the above API call
* To run a single test, run `bundle exec rake single`
* To run parallel tests, run `bundle exec rake parallel`
* To run local tests, run `bundle exec rake local`

## Notes
* You can view your test results on the [BrowserStack Automate dashboard](https://www.browserstack.com/app-automate)
* Refer [Get Started](https://www.browserstack.com/app-automate/appium-cucumber) document to configure the capabilities
* You can export the environment variables for the Username and Access Key of your BrowserStack account. 

  ```
  export BROWSERSTACK_USERNAME=<browserstack-username> &&
  export BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
  ```

## Addtional Resources
* [Cucumber](https://cucumber.io/)
* [Getting Started with App Automate](https://www.browserstack.com/app-automate/appium-cucumber)
