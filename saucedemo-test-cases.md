# Test Cases: Sauce Demo (saucedemo.com)

**Author:** Eunice Ansah Asare
**Application under test:** https://www.saucedemo.com (public demo site)
**Related document:** `test-plans/saucedemo-test-plan.md`

**How to use:** Run each case, then record the result. Add a bug report for any case marked Fail. Expected results, including error wording, should be checked against the live site on the day of testing.

The demo accounts and password are shown on the site's login page. Unless a case says otherwise, use `standard_user`.

## Login and logout

| ID | Title | Steps | Expected result | Status |
| --- | --- | --- | --- | --- |
| TC-LOGIN-01 | Valid login | 1. Open the site. 2. Enter a valid username and password. 3. Click Login. | The product list page opens. | Not run |
| TC-LOGIN-02 | Locked out user | Log in with `locked_out_user`. | An error says the user is locked out. The user stays on the login page. | Not run |
| TC-LOGIN-03 | Wrong password | Enter a valid username and a wrong password. Click Login. | An error says the username and password do not match. | Not run |
| TC-LOGIN-04 | Empty username | Leave the username empty, enter a password and click Login. | An error says the username is required. | Not run |
| TC-LOGIN-05 | Empty password | Enter a username, leave the password empty and click Login. | An error says the password is required. | Not run |
| TC-LOGIN-06 | Logout | 1. Log in. 2. Open the menu. 3. Click Logout. 4. Use the browser back button. | The login page shows. The product list is not shown again without logging in. | Not run |

## Products

| ID | Title | Steps | Expected result | Status |
| --- | --- | --- | --- | --- |
| TC-PROD-01 | Product list content | Log in and view the product list. | Each product shows an image, name, description, price and an Add to cart button. | Not run |
| TC-PROD-02 | Sort by name | Sort A to Z, then Z to A. | Products reorder alphabetically in each direction. | Not run |
| TC-PROD-03 | Sort by price | Sort low to high, then high to low. | Products reorder by price in each direction. | Not run |
| TC-PROD-04 | Product detail | Click a product name. | The detail page shows the correct name, description and price. Back to products returns to the list. | Not run |

## Cart

| ID | Title | Steps | Expected result | Status |
| --- | --- | --- | --- | --- |
| TC-CART-01 | Add one item | Click Add to cart on one product. | The button changes to Remove and the cart badge shows 1. | Not run |
| TC-CART-02 | Add several items | Add three products. | The cart badge shows 3 and the cart page lists all three. | Not run |
| TC-CART-03 | Remove from product list | Add an item, then click Remove on the product list. | The badge count goes down and the button returns to Add to cart. | Not run |
| TC-CART-04 | Remove from cart page | Add two items, open the cart and remove one. | Only one item remains and the badge shows 1. | Not run |
| TC-CART-05 | Continue shopping | Open the cart and click Continue Shopping. | The product list opens and the cart contents are kept. | Not run |

## Checkout

| ID | Title | Steps | Expected result | Status |
| --- | --- | --- | --- | --- |
| TC-CHK-01 | First name required | Start checkout, leave First Name empty, fill the rest and continue. | An error says first name is required. | Not run |
| TC-CHK-02 | Last name required | Leave Last Name empty and continue. | An error says last name is required. | Not run |
| TC-CHK-03 | Postal code required | Leave Postal Code empty and continue. | An error says postal code is required. | Not run |
| TC-CHK-04 | Order overview | Complete the checkout form and continue. | The overview shows the chosen items, payment and shipping information, item total, tax and total. | Not run |
| TC-CHK-05 | Total calculation | Compare the overview amounts with the product prices. | Item total equals the sum of the item prices, and total equals item total plus tax. | Not run |
| TC-CHK-06 | Complete order | Click Finish on the overview. | A confirmation message shows and the cart is empty. | Not run |
| TC-CHK-07 | Cancel on overview | Click Cancel on the overview page. | The user returns to the product list. | Not run |

## Special user accounts

Run the same steps as the standard user and note any differences.

| ID | Title | Steps | Expected result | Status |
| --- | --- | --- | --- | --- |
| TC-USER-01 | `problem_user` product list and cart | Log in as `problem_user`, view products, add and remove items, and sort. | Behaviour matches `standard_user`. Record every difference. | Not run |
| TC-USER-02 | `problem_user` checkout | Complete checkout as `problem_user`, filling in all fields. | The form keeps what was typed and the order completes as for `standard_user`. Record every difference. | Not run |
| TC-USER-03 | `performance_glitch_user` login time | Log in and note how long the product list takes to appear. | The product list appears in a reasonable time. Record the actual time. | Not run |
| TC-USER-04 | `error_user` actions | Add, remove and checkout as `error_user`. | All actions work as for `standard_user`. Record every error or difference. | Not run |
