pipeline {
  agent { label 'my'} 

  stages {
    stage('build') {
      steps {
        sh 'chmod 777 /Users/wangjian/Code/GoProject/src/github.com/yushu1987/lagou_cicd/shell/build.sh'
        sh '/Users/wangjian/Code/GoProject/src/github.com/yushu1987/lagou_cicd/shell/build.sh'
      }
      post {
          failure {
            post_email('build','fail')
          }
          aborted {
            post_email('build','aborted')
          }
      }
    }

    stage('unit_test') {
       steps {
          sh 'chmod 777 /Users/wangjian/Code/GoProject/src/github.com/yushu1987/lagou_cicd/shell/unit_test.sh'
          sh '/Users/wangjian/Code/GoProject/src/github.com/yushu1987/lagou_cicd/shell/unit_test.sh'
       }
       post {
          failure {
            post_email('unit_test','fail')
          }
          aborted {
            post_email('unit_test','aborted')
          }
       }
    }

    stage('deploy') {
       steps {
          sh 'chmod 777 /Users/wangjian/Code/GoProject/src/github.com/yushu1987/lagou_cicd/shell/deploy.sh'
          sh '/Users/wangjian/Code/GoProject/src/github.com/yushu1987/lagou_cicd/shell/deploy.sh'
       }
      post {
          failure {
            post_email('deploy','fail')
          }
          aborted {
            post_email('deploy','aborted')
          }
      }
    }
    stage('pipeline_end') {
      when {
          not {branch 'origin/main'}
      }
      steps {
          echo 'pipeline_end'
      }
      post {
          success {
            post_email('pipeline_end','success')
          }
          failure {
            post_email('pipeline_end','fail')
          }
          aborted {
            post_email('pipeline_end','aborted')
          }
      }
    }

  }

}

def post_email(String stage, String status) {
  mail to: 'wangjian52817@sina.com',
  subject: "【cicd_pipeline】${stage} ${status}",
  body: "build_id: ${env.BUILD_NUMBER}\nbranch: ${env.GIT_BRANCH}\nstage: ${stage}\nbuild_url: ${env.BUILD_URL}"
}
