# mkdev

Problem statement

You are responsible for a Kubernetes-based platform in a company that has many different products. Different teams within the org can own 1 or more products (assume single product consists of 1+ services). The platform should offer the following capabilities:
Isolation between different products - only teams owning this should be able to access the product, and the products should be isolated from each other on infra level;
New products and experiments pop up sometimes - it should be easy for the teams to roll them out from scratch;
If some product has spike in the load, infrastructure should handle this smoothly;
Rolling out new products should require minimal involvement from the platform engineer - meaning, things like DNS, storage etc should be automated as much as possible;
Teams should have observability capabilities, to see what is going on with the services;
Assume that you are only working on a production cluster, and that this cluster only runs production workloads. Platform should be managed as code, ideally with the CI/CD pipeline or other tools to perform changes like cluster upgrades, cluster add-on upgrades etc etc.
Feel free to create any number of GitHub repos that you feel are required for this.
Naturally, designing a system like this requires a lot of time, way more than 3 hours. What we want to see, besides the code, is the draft of the final picture of such a platform. You probably won’t have time to cover all use cases and scenarios, but we’d like to see which of them you would implement if you would have more time. Please spend some time on writing down a documentation about this system - how it works, how to deploy a new product, how to deploy a new version of a service within a product and things like this. What we are looking for is the ability to explain and document technical decisions and architectures you work on (again, within the time limit).
The outcome we’d like to see will be a mix of the code to provision the platform and the design document explaining it. Progress as far ahead as you can within 3 hours, and the rest we discuss on a call next week