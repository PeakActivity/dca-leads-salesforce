node("staging-base") {
  gitCheckout{}
  def sentryDSN = "https://4101afcd227c4d0f95ae846536ec669e@o417197.ingest.sentry.io/XYZUW"
  def sentryTraceSampleRate="1.0"
  
  def scheduleValue = "0 0 8 1 *"			//set this so it will never run

  if (env.BRANCH_NAME =="staging") {
    scheduleValue = "0 3 * * *"


  } else if (env.BRANCH_NAME ==  "uat") {
    scheduleValue = "0 3 * * *"
    cmsApi="https://strapi.uat.merce.knfilters.com"

  } else if (env.BRANCH_NAME == "master") {
    scheduleValue = "0 6 * * *"

  } 




  buildDeployNonGoCronJob {
    project = "project"
    namespace = "project"
    requestCpu = "500m"
    requestMemory = "256Mi"
    maxCpu = "700m"
    maxMemory = "2096Mi"
    schedule = "${scheduleValue}"
    envs =
        [
          '{"env":{"name": "SENTRY_DSN", "value": "' + "${sentryDSN}" + '"}}',
          '{"env":{"name": "SENTRY_TRACE_SAMPLE_RATE", "value": "' + "${sentryTraceSampleRate}" + '"}}',
        ]
  }
}
