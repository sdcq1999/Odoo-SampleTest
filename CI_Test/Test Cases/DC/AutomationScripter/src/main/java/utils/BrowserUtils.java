package utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;

/**
 * Utility class for browser operations
 */
public class BrowserUtils {

    /**
     * Initialize WebDriver based on browser type
     * @param browserType The browser to initialize (e.g., "chrome", "firefox", "edge")
     * @return WebDriver instance
     */
    public static WebDriver initializeDriver(String browserType) {
        WebDriver driver;

        switch (browserType.toLowerCase()) {
            case "chrome":
                ChromeOptions chromeOptions = new ChromeOptions();
                chromeOptions.addArguments("--start-maximized");
                chromeOptions.addArguments("--remote-allow-origins=*");
                chromeOptions.addArguments("--disable-dev-shm-usage");
                chromeOptions.addArguments("--no-sandbox");
                driver = new ChromeDriver(chromeOptions);
                break;

            case "firefox":
                FirefoxOptions firefoxOptions = new FirefoxOptions();
                firefoxOptions.addArguments("--start-maximized");
                driver = new FirefoxDriver(firefoxOptions);
                break;

            case "edge":
                EdgeOptions edgeOptions = new EdgeOptions();
                edgeOptions.addArguments("--start-maximized");
                edgeOptions.addArguments("--remote-allow-origins=*");
                driver = new EdgeDriver(edgeOptions);
                break;

            default:
                throw new IllegalArgumentException("Unsupported browser type: " + browserType);
        }

        System.out.println("Initialized " + browserType + " browser successfully.");
        return driver;
    }

    /**
     * Quit the WebDriver instance
     * @param driver The WebDriver instance to quit
     */
    public static void quitDriver(WebDriver driver) {
        if (driver != null) {
            driver.quit();
            System.out.println("WebDriver quit successfully.");
        }
    }

    /**
     * Close the current browser window
     * @param driver The WebDriver instance
     */
    public static void closeBrowser(WebDriver driver) {
        if (driver != null) {
            driver.close();
            System.out.println("Browser window closed successfully.");
        }
    }

    /**
     * Maximize the browser window
     * @param driver The WebDriver instance
     */
    public static void maximizeBrowser(WebDriver driver) {
        if (driver != null) {
            driver.manage().window().maximize();
            System.out.println("Browser window maximized successfully.");
        }
    }

    /**
     * Get the current page title
     * @param driver The WebDriver instance
     * @return The page title
     */
    public static String getPageTitle(WebDriver driver) {
        if (driver != null) {
            return driver.getTitle();
        }
        return "";
    }

    /**
     * Get the current page URL
     * @param driver The WebDriver instance
     * @return The current URL
     */
    public static String getCurrentURL(WebDriver driver) {
        if (driver != null) {
            return driver.getCurrentUrl();
        }
        return "";
    }
}