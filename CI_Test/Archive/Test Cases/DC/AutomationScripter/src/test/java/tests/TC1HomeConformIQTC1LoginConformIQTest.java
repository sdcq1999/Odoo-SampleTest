package tests;

import org.openqa.selenium.WebDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import page_objects.HomePage;
import page_objects.LoginPage;
import utils.BrowserUtils;

import java.time.Duration;

/**
 * Test Cass: TC1_Home_ConformIQ_TC1_Login_ConformIQ
 * Description: Test case for validating login functionality with valid credentials
 */
public class TC1HomeConformIQTC1LoginConformIQTest {

    private WebDriver driver;
    private HomePage homePage;
    private LoginPage loginPage;

    @BeforeMethod
    public void setUp() {
        driver = BrowserUtils.initializeDriver("chrome");
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        driver.manage().window().maximize();
        homePage = new HomePage(driver);
        loginPage = new LoginPage(driver);
    }

    /**
     * Test Case: TC1_Home_ConformIQ_TC1_Login_ConformIQ
     * Steps:
     * 1. Open URL: https://conformiq11.odoo.com/
     * 2. Click Sign in hyperlink on Home page
     * 3. Fill login form with valid credentials
     * 4. Click Log in button
     */
    @Test(priority = 1, description = "TC1 Home ConformIQ TC1 Login ConformIQ - Valid Login")
    public void testValidLogin() {
        try {
            // Step 1: Perform Open URL
            String url = "https://conformiq11.odoo.com/";
            homePage.openURL(url);
            System.out.println("Step 1: Opened URL: " + url);

            // Step 2: Click Sign in Hyperlink on Home page
            homePage.clickSignInHyperlink();
            System.out.println("Step 2: Clicked Sign in hyperlink");

            // Step 3: Fill Login Form with valid credentials
            String login = "suhas.deshpande@conformiq.com";
            String password = "Timetravel@1999";
            loginPage.fillLoginForm(login, password);
            System.out.println("Step 3: Filled login form with login: " + login);

            // Step 4: Click Log in Button
            loginPage.clickLogInButton();
            System.out.println("Step 4: Clicked Log in button");

            // Wait for login to complete
            Thread.sleep(3000);
            System.out.println("Test case TC1_Home_ConformIQ_TC1_Login_ConformIQ executed successfully!");

        } catch (Exception e) {
            System.err.println("Error during test execution: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Test failed due to exception", e);
        }
    }

    @AfterMethod
    public void tearDown() {
        BrowserUtils.quitDriver(driver);
    }
}