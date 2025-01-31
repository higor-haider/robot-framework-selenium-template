*** Settings ***
Documentation       This file contains the locators of the elements in the home page


*** Variables ***
${ANIMALS_LIST}                         id=animals
${BRAZIL_COUNTRY_TEXT}                  xpath=//option[@value="brazil"]
${COLORS_LIST}                          id=colors
${COUNTRY_DROPDOWN}                     id=country
${DATE_PICKER_1_INPUT}                  id=datepicker
${DATE_PICKER_2_FIRST_DAY}              xpath=//a[@data-date="1"]
${DATE_PICKER_2_INPUT}                  id=txtDate
${DATE_PICKER_2_MONTH_LIST}             xpath=//select[@data-handler="selectMonth"]
${DATE_PICKER_2_YEAR_LIST}              xpath=//select[@data-handler="selectYear"]
${DATE_PICKER_3_END_DATE_INPUT}         id=end-date
${DATE_PICKER_3_START_DATE_INPUT}       id=start-date
${DAYS_BETWEEN_RANGE_TEXT}              id=result
${EMAIL_INPUT}                          id=email
${FRIDAY_CHECKBOX}                      id=friday
${NAME_INPUT}                           id=name
${PHONE_INPUT}                          id=phone
${SATURDAY_CHECKBOX}                    id=saturday
${SINGLE_FILE_STATUS_TEXT}              id=singleFileStatus
${SUBMIT_BUTTON}                        xpath=//button[@class="submit-btn"]
${SUNDAY_CHECKBOX}                      id=sunday
${UPLOAD_FILE_INPUT}                    id=singleFileInput
${UPLOAD_SINGLE_FILE_BUTTON}            xpath=//button[text()="Upload Single File"]
