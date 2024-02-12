import logFactory from './utils/logs/logProviders'

//init SENTRY and Logger
logFactory.initialize()

/*****   MAIN  ****/
const main = (): void => {
  logFactory.logMessage(`-----RUN-----`)
}

main()
