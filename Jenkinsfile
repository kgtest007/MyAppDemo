node {
   stage('checkout'){
       git 'https://github.com/AdityaSP/MyAppDemo'
   }
   stage('build'){
       def buildtool = tool name: 'maven', type: 'maven'
       sh "$buildtool/bin/mvn install"
   }
   stage('deploy'){
       sh "cp target/MyAppDemo.war /var/lib/tomcat8/webapps/"
   }
   stage('artifacts'){
       archiveArtifacts 'target/**/*.war'
   }
   stage('emails'){
       emailextrecipients([developers()])
   }
}
