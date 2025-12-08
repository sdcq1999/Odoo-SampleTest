package page_objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

/**
 * Page Object for Login | ConformIQ Screen
 */
public class LoginPage {

    private WebDriver driver;
    private WebDriverWait wait;

    // Locators
    private By loginTextbox = By.xpath("//input[@id='login' and @name='login']");
    private By passwordTextbox = By.xpath("//input[@id='password' and @name='password']");
    private By loginButton = By.xpath("//button[@class='btn btn-primary']");

    // Constructor
    public LoginPage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WebDriverWait(driver, Duration.ofSeconds(20));
    }

    /**
     * Enter login credentials in the Login | ConformIQ_FORM form
     * @param login The login/username to enter
     * @param password The password to enter
     */
    public void fillLoginForm(String login, String password) {
        WebElement loginElement = wait.until(ExpectedConditions.visibilityOfElementLocated(loginTextbox));
        loginElement.clear();
        loginElement.sendKeys(login);

        WebElement passwordElement = driver.findElement(passwordTextbox);
        passwordElement.clear();
        passwordElement.sendKeys(password);
    }

    /**
     * Enter login value in the login textbox
     * @param login The login/username to enter
     */
    public void enterLogin(String login) {
        WebElement loginElement = wait.until(ExpectedConditions.visibilityOfElementLocated(loginTextbox));
        loginElement.clear();
        loginElement.sendKeys(login);
    }

    /**
     * Enter password value in the password textbox
     * @param password The password to enter
     */
    public void enterPassword(String password) {
        WebElement passwordElement = wait.until(ExpectedConditions.visibilityOfElementLocated(passwordTextbox));
        passwordElement.clear();
        passwordElement.sendKeys(password);
    }

    /**
     * Click the Log in button
     */
    public void clickLogInButton() {
        WebElement loginButtonElement = wait.until(ExpectedConditions.elementToBeClickable(loginButton));
        loginButtonElement.click();
    }

    /**
     * Verify if the login textbox is displayed
     * @return true if displayed, false otherwise
     */
    public boolean isLoginTextboxDisplayed() {
        try {
            return driver.findElement(loginTextbox).isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Verify if the Log in button is displayed
     * @return true if displayed, false otherwise
     */
    public boolean isLogInButtonDisplayed() {
        try {
            return driver.findElement(loginButton).isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }
}