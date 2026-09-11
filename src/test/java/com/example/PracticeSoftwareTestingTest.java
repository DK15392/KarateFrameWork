package com.example;

import com.intuit.karate.junit5.Karate;

class PracticeSoftwareTestingTest {

    @Karate.Test
    Karate practiceSoftwareTestingWebsite() {
        return Karate.run("website-automation").relativeTo(getClass());
    }
}