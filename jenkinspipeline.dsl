node {

   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/djjerguthrie/testjenkins.git'
   }
   stage('Build') {
      // Run the maven build
      //if (isUnix()) {
        // sh newfile.sh
      //} 
      sh 'pwd'
      sh './newfile.sh'
   }
}
