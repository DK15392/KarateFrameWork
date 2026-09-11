Feature: Search the practice software testing store

  Background:
    * configure driver = { type: 'chrome', executable: '/usr/bin/microsoft-edge', headless: true, showDriverLog: true, addOptions: ['--no-sandbox', '--disable-dev-shm-usage'] }
    * configure retry = { count: 10, interval: 500 }

  Scenario: Search for Hammer and capture the result
    Given driver 'https://practicesoftwaretesting.com/'
    And waitFor('input[placeholder="Search"]')
    When input('input[placeholder="Search"]', 'Hammer')
    And waitForText('body', 'Hammer')
    Then match driver.text contains 'Hammer'
    * def hammerSearchScreenshot = screenshot()
    * karate.write(hammerSearchScreenshot, 'hammer-search.png')