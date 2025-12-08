package utils;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

/**
 * Utility class for wait operations in Selenium
 */
public class WaitUtils {

    private static final int DEFAULT_WAIT_TIME = 20;

    /**
     * Wait for an element to be visible
     * @param driver The WebDriver instance
     * @param locator The element locator
     * @return The visible WebElement
     */
    public static WebElement waitForVisibility(WebDriver driver, By locator) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(DEFAULT_WAIT_TIME));
        return wait.until(ExpectedConditions.visibilityOfElementLocated(locator));
    }

    /**
     * Wait for an element to be clickable
     * @param driver The WebDriver instance
     * @param locator The element locator
     * @return The clickable WebElement
     */
    public static WebElement waitForClickability(WebDriver driver, By locator) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(DEFAULT_WAIT_TIME));
        return wait.until(ExpectedConditions.elementToBeClickable(locator));
    }

    /**
     * Wait for an element to be present
     * @param driver The WebDriver instance
     * @param locator The element locator
     * @return The present WebElement
     */
    public static WebElement waitForPresence(WebDriver driver, By locator) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(DEFAULT_WAIT_TIME));
        return wait.until(ExpectedConditions.presenceOfElementLocated(locator));
    }

    /**
     * Wait for an element to be invisible
     * @param driver The WebDriver instance
     * @param locator The element locator
     * @return true if element is invisible, false otherwise
     */
    public static boolean waitForInvisibility(WebDriver driver, By locator) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(DEFAULT_WAIT_TIME));
        return wait.until(ExpectedConditions.invisibilityOfElementLocated(locator));
    }

    /**
     * Wait for page title to contain specific text
     * @param driver The WebDriver instance
     * @param title The expected title text
     * @return true if title contains text, false otherwise
     */
    public static boolean waitForTitleContains(WebDriver driver, String title) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(DEFAULT_WAIT_TIME));
        return wait.until(ExpectedConditions.titleContains(title));
    }

    /**
     * Wait for page URL to contain specific text
     * @param driver The WebDriver instance
     * @param urlFragment The expected URL fragment
     * @return true if URL contains fragment, false otherwise
     */
    public static boolean waitForUrlContains(WebDriver driver, String urlFragment) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(DEFAULT_WAIT_TIME));
        return wait.until(ExpectedConditions.urlContains(urlFragment));
    }

    /**
     * Hard wait for specified milliseconds
     * @param milliseconds Time to wait in milliseconds
     */
    public static void hardWait(long milliseconds) {
        try {
            Thread.sleep(milliseconds);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            System.err.println("Wait interrupted: " + e.getMessage());
        }
    }
}