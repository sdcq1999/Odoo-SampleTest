package page_objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

/**
 * Page Object for Home | ConformIQ Screen
 */
public class HomePage {

    private WebDriver driver;
    private WebDriverWait wait;

    // Locators
    private By signInHyperlink = By.xpath("//a[@class='o_nav_link_btn nav-link border px-3' and @href='/web/login']");

    // Constructor
    public HomePage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WebDriverWait(driver, Duration.ofSeconds(20));
    }

    /**
     * Open the specified URL
     * @param url The URL to open
     */
    public void openURL(String url) {
        driver.get(url);
    }

    /**
     * Click the Sign in hyperlink
     */
    public void clickSignInHyperlink() {
        WebElement signInElement = wait.until(ExpectedConditions.elementToBeClickable(signInHyperlink));
        signInElement.click();
    }

    /**
     * Verify if the Sign in hyperlink is displayed
     * @return true if displayed, false otherwise
     */
    public boolean isSignInHyperlinkDisplayed() {
        try {
            return driver.findElement(signInHyperlink).isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }
}