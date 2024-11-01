# <span style="color: RGB(250,170,100)">From the Deep</span>

### Introduction and Objective
To assess the utility of different partitioning methods for distributing data across multiple servers in a way that balances load and minimizes *bottlenecks*, while evaluating their potential drawbacks in practical applications. This observation aims to establish an understanding by exploring different models in scalable data systems, focusing on either horizontal or vertical scaling, with particular emphasis on sharding models and the trade-offs involved.

## <span style="color: RGB(200,250,200)">Random Partitioning</span>
---

### Advantages of Random Partitioning
**Observation 1: Load Distribution**
- *Insight:* Random partitioning, by design, distributes data evenly across servers. <p style="color: RGB(200,250,190)">This distribution mechanism prevents any single server from becoming overloaded with requests.</p>
- *Evidence:* From the course material we have covered, load balancing is enhanced when data is evenly distributed or unpredictable, which leads to increased performance under high-traffic conditions.

**Observation 2: Implementation Simplicity**
- *Insight:* Random partitioning is less complex to implement; it is also very similar to the [hash value](#partitioning-by-hash-value) functions, which we'll discuss shortly.
- *Evidence:* Studies show that simplifying complexity in development configurations enhances the efficiency of the workflow.

**Observation 3: Potential Cost Savings**
- *Insight:* With the ability to add data randomly and evenly across different servers, the likelihood of losing all data is minimized.
- *Evidence:* To illustrate this point, we can reference an example from Lecture 6. Three boats retrieve information from the submarine robot randomly. If one of those boats encounters an issue, the chance to recover some interesting data remains high over time. The loss will be compensated for as time goes on. It goes without saying that the impact of the lost boat is mitigated compared to collecting all the data on one server.

### Limitations
**Observation 4: Inefficient Data Retrieval for Related Data**
- *Insight:* When users call for data, it may require multiple server calls to retrieve related items, which can be time-consuming.
- *Evidence:* This aligns with the perspective that the more complex a query is, the greater the time lapse will be, especially when tasks involve joining or aggregating data.

**Observation 5: Limited Optimization for Storage Efficiency**
- *Insight:* Storage optimization becomes challenging when data is unpredictable since the strategy does not consider data frequency or storage needs.
- *Evidence:* It’s important to consider that this can lead to inefficient storage allocation, either through overuse or underuse in some servers.

---

## <span style="color: RGB(200,500,200)">Partitioning by Hour</span>
---

### Advantages of Hour Partitioning
#### Efficient Data Retrieval for Related Data
- *Insight:* If all the data is consolidated in one database, we won't need to call multiple different servers. It is more efficient when joining or aggregating the tables.
- *Evidence:* Performance benchmarks show increased velocity with simpler queries.

#### Optimization for Storage
- *Insight:* Storage optimization becomes easier as the data model is predictable.
- *Evidence:* For instance, if we know that the robot scans the submarine life activity earlier in the morning and later at night, it will be easier to share the data among the boats.

### Limitations
#### Observation 1: Potential Devastating Financial Loss
- *Insight:* This leads to storage inefficiency with the risk of consolidating all data on one server.
- *Evidence:* Referring back to my earlier example, if we choose to let one boat retrieve all the information of one type, the probability of losing data will be significantly higher.

#### Observation 2: Implementation Complexity
- *Insight:* The more a server is burdened, the less efficient it becomes, potentially leading to significant latency issues when retrieving information. Additionally, it may require more optimization and indexing, which can create flaws in the model.
- *Evidence:* More data means larger files, which complicate configurations. Increased complexity often slows down efficiency.

#### Observation 3: Hotspot Issues
- *Insight:* This model doesn't prevent any single server from becoming overloaded with requests.
- *Evidence:* As discussed in our lectures, studies show that if a particular data set attracts interest, the risk of over-querying is likely to increase.

#### Leading to Vertical Scaling
- *Insight:* If a boat retrieves too much data beyond its maximum capacity, it will likely require additional hardware to keep up with the incoming information or may need to delete information.
- *Evidence:* For example, if the robot sends 50,000 data points per minute, it can lead to an enormous amount of information stored on the server of the boat retrieving it.

---

## <span style="color: RGB(200,500,200)">Partitioning by Hash Value</span>
---

### Advantages of Hash Value Partitioning
#### Even Distribution
- *Insight:* Hash functions typically provide a uniform distribution of values, which helps evenly distribute data across partitions, reducing the likelihood of hotspots where one partition becomes overloaded.

#### Simplicity of Implementation
- *Insight:* The process of hashing is straightforward and does not require extensive knowledge of data access patterns. It can be easily implemented in most database systems.

#### Scalability
- *Insight:* Adding new partitions is feasible; however, it may require rehashing existing data. As the number of partitions increases, uniform distribution helps maintain performance as the dataset grows.

#### Improved Performance for Lookup Operations
- *Insight:* When the same hash function is consistently applied, lookups for specific keys can be performed quickly, as they are directed to the correct partition without needing to search all partitions.

#### Data Isolation
- *Insight:* By partitioning data, sensitive information can be isolated from less sensitive data. This isolation helps to enforce stricter security protocols on partitions that contain critical or regulated data (e.g., personal identification information, financial records).
- *Evidence:* Different partitions can have distinct access controls and security measures, allowing for granular permission settings. For example, only authorized users may access a partition containing sensitive user data, reducing the risk of unauthorized access.

#### Reduced Attack Surface
- *Insight:* If a security breach occurs, the impact can be limited to a specific partition rather than the entire dataset. This containment minimizes the risk of complete data compromise.
- *Evidence:* Security measures (such as firewalls, intrusion detection systems, and encryption) can be specifically applied to partitions holding sensitive data, enhancing security without applying these measures universally across all data.

### Limitations
**Difficulty in Rebalancing**
- *Insight:* When the number of partitions changes, rebalancing can become complicated and resource-intensive.

**Inefficient for Range Queries**
- *Insight:* Hash partitioning is not well-suited for range queries because related data may be stored in different partitions.

**Limited Optimizations for Data Locality**
- *Insight:* Since the distribution of data is based solely on the hash function, related records might not be stored together, leading to increased latency for queries that require accessing related records.

**Potential for Hash Collisions**
- *Insight:* Although rare with well-designed hash functions, collisions (two different keys resulting in the same hash value) can occur, leading to inefficiencies or complications in data retrieval.

---
