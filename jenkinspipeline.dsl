node {

   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/djjerguthrie/testjenkins.git'
   }
   stage('Build') {
      //def pw = input message '<message>', 
      //		parameters: [password(defaultValue: '', 
      //		description: 'Enter a sample password.', name: 'passwwd')]
      sh 'pwd'
      sh './newfile.sh'
      sh 'logger ${passwd}'
   }
   stage('Input') {
      input 'Continue for the next stage?'
   }
   stage('Go') {
      sh 'logger went'
   }
}
