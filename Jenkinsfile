pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Check out the source code from the repository
                git branch: 'main', url: 'https://github.com/cnfuzed/hello.git'
            }
        }
        
        stage('Terraform') {
            steps {
                // Run Terraform commands
		sh 'cd terraform' 
                sh 'terraform init'
                sh 'terraform apply -auto-approve'
            }
        }
        
        stage('Ansible') {
            steps {
                // Run Ansible playbook
                sh 'ansible-playbook -i inventory playbook.yml'
            }
        }
    }
}

