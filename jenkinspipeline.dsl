properties( [
    options {
        disableConcurrentBuidls()
    }
    parameters( [
        string( defaultValue: '', description: '', name: 'USERID' )
    ] )
] )
pipeline {
    agent any
    stages {
        stage( 'Preparation' ) { // for display purposes
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/djjerguthrie/testjenkins.git'
                echo "Active user is now ${params.USERID}"
            }
        }
        stage( 'Build' ) {
            steps {
                //def pw = input message '<message>',
                //                parameters: [password(defaultValue: '',
                //                description: 'Enter a sample password.', name: 'passwwd')]
                sh 'pwd'
                sh './newfile.sh'
                sh 'logger ${passwd}'
            }
        }
        stage( 'Input' ) {
            steps {
                timeout(time:60, unit: 'SECONDS') {
                    input 'Continue for the next stage?'
                }
            }
        }
        stage( 'Go' ) {
            steps {
                sh 'logger went'
            }
        }
    }
}
