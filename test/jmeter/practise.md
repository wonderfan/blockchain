# 1. How to carry out best practise?

Jmeter Best Practise

The master-slave mode should be used to get the best test resutl. Non-gui mode should be adopted to reduce system resource. Listener and assert module should used less and use log file to verify result instead. The number of threads should be limited. The temporary files should be cleaned before test execution. The realistic load condition should be implemented and test suite should be repeated many times.Each user type and behavior should be represented by each thread group. The response assertion, size assertion and duration assertion should be used in the test plan. It is good to use scripts. The values should be paramerized and read from configuration file. 

The command line of runing jmeter is formed as `jmeter -t test.jmx`. The view result can be used to debug the test plan. The report can be extracted from result file. The delay can be used to create real life user scenario. Locust is another popular load test tools. The jmeter can also use in the domain of security test. Jmeter can integrate with CI/CD tools.
