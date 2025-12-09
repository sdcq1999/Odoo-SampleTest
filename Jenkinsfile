pipeline {
    // Uses the main Jenkins agent
    agent any
    
    stages {
        stage('Simulate SVN Checkout & Model Sync') {
            steps {
                // In a real SVN setup, this would be: svn checkout http://svn.server/repo
                echo 'Simulating checkout by ensuring test scripts are in the workspace.'
            }
        }
        
        stage('Setup Robot Environment') {
            steps {
                echo 'Verifying Python and Robot Framework readiness...'
                // CHANGED sh to bat
                bat 'python --version'
            }
        }
        
       stage('Run Conformiq-Generated Tests') {
			steps {
				echo 'Executing Robot Framework tests...'
				// The path starts with CI_Test because that is the first folder inside the Git root
				bat 'python -m robot --outputdir robot-results "CI_Test/Test Cases/DC 2/RobotFramework_081225/DC tests.robot"'
			}
		}
        
        stage('Quality Gate & Reporting') {
            steps {
                echo 'Processing test results using Robot Framework Plugin (100% pass required)...'
                // Final corrected parameter name for your Jenkins plugin
                robot passThreshold: 100, outputPath: 'robot-results', logFileName: 'log.html', reportFileName: 'report.html', outputFileName: 'output.xml'
            }
        }
        
        // This stage needed to be properly nested inside the 'stages' block
        stage('Conditional Deployment (CD)') {
            when {
                // Only run if the previous Quality Gate stage passed successfully
                expression { return currentBuild.result == 'SUCCESS' }
            }
            steps {
                echo '✅ Tests Passed! The Conformiq-approved build is ready for deployment.'
                // IMPORTANT: Changed sh to bat for Windows compatibility
                bat 'echo "DEPLOYING APPROVED BUILD TO PRODUCTION SERVER..."'
            }
        }
    } // End of stages block
} // End of pipeline block