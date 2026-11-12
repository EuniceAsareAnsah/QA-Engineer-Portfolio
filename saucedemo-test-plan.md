# Test Plan: Sauce Demo (saucedemo.com)

**Author:** Eunice Ansah Asare
**Application under test:** https://www.saucedemo.com (public demo e-commerce site built for testing practice)
**Document type:** Sample test plan for portfolio purposes

## 1. Purpose

This plan describes how the main shopping flow of Sauce Demo is tested: logging in, browsing products, managing the cart and completing checkout. It is a sample written against a public practice site and does not describe any client or employer project.

## 2. Scope

**In scope**
- Login and logout, including error messages
- Product listing, sorting and product detail pages
- Adding and removing items from the cart
- Checkout: customer information, order overview and order confirmation
- Behaviour of the different test user accounts the site provides

**Out of scope**
- Real payment processing (the site does not take real payments)
- Performance and load testing beyond observing the slow-login test user
- Security and penetration testing
- Accessibility audit (may be added as a later phase)

## 3. Test types

| Type | Purpose |
| --- | --- |
| Functional | Confirm each feature works as described |
| Exploratory | Find unexpected issues outside scripted cases |
| Regression | Re-run key cases after any change |
| Usability | Check that error messages and flows are clear |
| Cross-browser | Confirm behaviour matches in Chrome, Firefox and Safari |
| Responsive | Check mobile screen sizes using Chrome DevTools device mode |

## 4. Test environment

- Browsers: latest Chrome, Firefox and Safari
- Devices: desktop, plus mobile screen sizes through Chrome DevTools
- Tools: Chrome DevTools, Jira-style bug template (see `TEMPLATE.md`), BrowserStack for extra device coverage if available

## 5. Test data

The site publishes its own demo accounts on the login page. The accounts used in this plan are:

| User | Used for |
| --- | --- |
| `standard_user` | Main happy-path testing |
| `locked_out_user` | Checking the locked account error |
| `problem_user` | Comparing behaviour against the standard user |
| `performance_glitch_user` | Observing slow responses |
| `error_user` | Looking for error handling issues |

## 6. Entry and exit criteria

**Entry criteria**
- The site loads and the login page is reachable
- Test cases are written and reviewed
- Browsers and tools are ready

**Exit criteria**
- All planned test cases have been run
- All failed cases have a bug report
- No open critical or high severity defects in the main purchase flow, or they are documented as known issues

## 7. Defect severity

| Severity | Meaning |
| --- | --- |
| Critical | Blocks the main flow, for example a customer cannot complete checkout |
| High | A major feature is broken but a workaround exists |
| Medium | A feature works incorrectly in a limited way |
| Low | Cosmetic or minor wording issue |

## 8. Risks

| Risk | Mitigation |
| --- | --- |
| The demo site changes without notice | Record the date of each test run |
| Some user accounts are designed to behave badly, so results can look like defects | Compare against `standard_user` and note this in each report |
| Limited browser and device coverage | Prioritize Chrome first, then add others |

## 9. Deliverables

- This test plan
- Test cases (`test-cases/saucedemo-test-cases.md`)
- Bug reports for any failed cases (`bug-reports/`)
- Exploratory testing notes (`exploratory-notes/`)
