# Flipkart Automation
Automation of Flipkart with selenium and robot framework

# Requirements:
1. Open the Firefox browser.
2. Maximize the browser window
3. Go to Flipkart.com 
4. Login 
5. Search for "red shoes" 
6. Write a method to print PASS if the title of the page matches with \“Red Shoes- Buy Products Online at Best Price in India - All Categories | Flipkart.com” else FAIL.
7. Reload the page.
8. Sort by Price low to high 
9. Apply price filter between 1000 to 2000 
10. Add 3rd search result in cart 
11. Update the quantity to 2 
12. Close the Browser

## How To Run
1. Clone the repository.
2. Install Firefox browser.
3. Install geckodriver [From Here](https://github.com/mozilla/geckodriver/releases)
4. Extract the download and paste in the project root.
5. Install all the dependencies with `pip install -r requirements.txt`
6. Run `python -m robot -d <reports dir> -V config.yaml TestCases`
7. Now it will automate through all the steps as per requirements.