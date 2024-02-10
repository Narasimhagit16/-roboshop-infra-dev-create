pipeline {
    agent {
        node {
            label 'AGENT-1'
        }
    }
    parameters {

        choice(name: 'action', choices: ['apply', 'destroy'])

        
    }
    options {
        timeout(time: 1, unit : 'HOURS')
        disableConcurrentBuilds()
        ansiColor('xterm')
        
    }
    stages{
        stage('VPC') {
                steps {
                    sh """
                    cd 01-vpc 
                    terraform init --reconfigure
                    terraform apply -auto-approve
                    """
                }
            }

        stage('SG') {
                steps {
                    sh """
                    cd 02-sg 
                    terraform init --reconfigure
                    terraform apply -auto-approve
                    """
                }
            }

        stage('VPN') {
                steps {
                    sh """
                    cd 03-vpn
                    terraform init --reconfigure
                    terraform apply -auto-approve
                    """
                }
            }
        stage('Databases and APP-ALB') {
            parallel{
                stage("Databases"){
                    steps {
                        sh """
                        cd 04-databases
                        terraform init --reconfigure
                        terraform apply -auto-approve
                        """
                    }
                }
                stage("APP-ALB"){
                    steps {
                        sh """
                        cd 05-app-alb
                        terraform init --reconfigure
                        terraform apply -auto-approve
                        """
                    }
                }
            }
         }
        }

    post { 
        always { 
            echo 'I will always Run Success or Failure'
        }
        failure { 
            echo 'Pipeline failed!'
        }
        success { 
            echo 'I will HI say when success'
        } 
    }
 }
