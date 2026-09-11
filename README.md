# Practice Software Testing Karate Automation

This project searches [Practice Software Testing](https://practicesoftwaretesting.com/) for `Hammer`, validates that the result is visible, and writes a screenshot into the Karate HTML report output.

## Run

Install Microsoft Edge, then run:

```bash
mvn test
```

The generated report is available at `target/karate-reports/karate-summary.html`. The screenshot is written to `target/karate-reports/hammer-search.png`.