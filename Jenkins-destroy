pipeline {
    agent {
        node {
            label 'AGENT-1'
        }
    }
    parameters {

           booleanParam(name: 'Destroy', defaultValue: false)

        
    }
    options {
        timeout(time: 1, unit : 'HOURS')
        disableConcurrentBuilds()
        ansiColor('xterm')

    //         when {
    //             expression{
    //           params.Deploy
    //         }        
     }

    stages{

        stage('Databases and APP-ALB') {
            parallel{
                stage("Databases"){
                    steps {
                        sh """
                        cd 04-databases
                        terraform init --reconfigure
                        terraform destroy -auto-approve
                        """
                    }
                }
                stage("APP-ALB"){
                    steps {
                        sh """
                        cd 05-app-alb
                        terraform init --reconfigure
                        terraform destroy -auto-approve
                        """
                    }
                }
            }
         }

        stage('VPN') {
                steps {
                    sh """
                    cd 03-vpn
                    terraform init --reconfigure
                    terraform destroy -auto-approve
                    """
                }
            }

        stage('SG') {
                steps {
                    sh """
                    cd 02-sg 
                    terraform init --reconfigure
                    terraform destroy -auto-approve
                    """
                }
            }

        stage('VPC') {
                steps {
                    sh """
                    cd 01-vpc 
                    terraform init --reconfigure
                    terraform destroy -auto-approve
                    """
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
