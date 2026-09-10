package com.example;

import com.intuit.karate.junit5.Karate;

class PracticeSoftwareTestingTest {

    @Karate.Test
    Karate searchForHammer() {
        return Karate.run("hammer-search").relativeTo(getClass());
    }
}