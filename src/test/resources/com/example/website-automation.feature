Feature: Practice Software Testing website automation

  Background:
    * configure driver = { type: 'chrome', executable: '/usr/bin/chromium', headless: true, showDriverLog: true, addOptions: ['--no-sandbox', '--disable-dev-shm-usage'] }
    * configure retry = { count: 10, interval: 500 }
    * def siteUrl = 'https://practicesoftwaretesting.com/'
    * def searchSelector = 'input[placeholder="Search"]'

  Scenario: Search for a product
    Given driver siteUrl
    And waitFor(searchSelector)
    When input(searchSelector, 'Hammer')
    And waitForText('body', 'Hammer')
    Then match driver.text contains 'Hammer'
    * def pageTitle = driver.title
    * print 'Page title:', pageTitle
    * karate.write(screenshot(), 'website-automation.png')