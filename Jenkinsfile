pipeline {
    agent any
    environment {
        msbuild = tool 'MSBuild'
        JAVA_HOME = tool 'JDK-1.8'
    }
    stages {
        stage('checkout'){
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], 
                doGenerateSubmoduleConfigurations: false, extensions: [], 
                submoduleCfg: [], 
                userRemoteConfigs: [[credentialsId: 'ac01b4d9-4028-44b9-8fb4-de480912a188', 
                url: 'http://it-112:8040/tfs/DefaultCollection/_git/Demo%20Project']]])
            }
        }
        stage('Flyway'){
            steps {
                flywayrunner commandLineArgs: '', 
                credentialsId: 'ff39ee9b-2886-4960-851a-561597bf6b0f', 
                flywayCommand: 'migrate', installationName: 'Flyway', 
                locations: 'filesystem:$WORKSPACE/db/', 
                url: 'jdbc:sqlserver://localhost:1433;databaseName=Dev_DB'
            }
        }
    }
}    
