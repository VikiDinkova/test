pipeline {
    agent any

    stages {
        stage('Build SDK') {
            steps {
                echo 'Building SDK...'
                bat('npm --version')
                bat('node -v')
                bat('cd scripts')
                sh('bash ./buildSdk')
                
                echo '...............'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                if ( "${SKIP_TESTS}" == "false" ) {
                    bat('cd scripts')
                    // sh('bash ./unittestSdk')
                } 
                bat("git checkout \"${REVISION}\"")
                echo '...............'
            }
        }
        stage('Publish SDK') {
            steps {
                echo 'Publishing SDK....'
                // git --version
                // cd scripts
                // bash ./publishSdk -r http://ecsb001011cf.epam.com:8081/repository/npm-internal/ -a bWVyY2F0b3I6bWVyY2F0b3I=
                echo '...............'
            }
        }
        stage('Publish apps') {
            steps {
                echo 'Publishing apps....'
                // cd scripts
                // echo Remote server: $COMMON_REMOTE_SERVER

                // if [ "$BUILD_APPS" = true ]; then
                //     bash ./buildApps "http://$COMMON_REMOTE_SERVER:8080/settings/settingEndpoints.js" "http://$COMMON_REMOTE_SERVER:8080/settings/settingEndpoints.js"
                // fi

                // if [ "$BUILD_SETTINGS" = true ]; then 
                //     bash ./buildSettings "'$COMMON_REMOTE_SERVER'" "'$COMMON_REMOTE_SERVER'" "'$COMMON_REMOTE_SERVER'" $USE_PORT
                // fi
                echo '...............'
            }
        }
        stage('Deploy apps') {
            steps {
                echo 'Deploying apps....'
                
                echo '...............'
            }
        }
    }
}
