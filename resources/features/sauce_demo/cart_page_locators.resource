*** Settings ***
Documentation       This file contains the locators of the elements in the cart page


*** Variables ***
${PRODUCT_TEXT}             xpath=//div[@class="inventory_item_name" and text()="Sauce Labs Backpack"]
${REMOVE_PRODUCT_BUTTON}    id=remove-sauce-labs-backpack
${YOUR_CART_TEXT}           xpath=//span[text()="Your Cart"]
