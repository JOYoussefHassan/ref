## HTTP connection versions

| **HTTP Version** | **Release Year** | **Key Features** |
|------------------|------------------|------------------|
| **HTTP 1.0**     | 1996             | - Introduced HTTP headers and status codes<br>- Supported methods like POST and HEAD<br>- Allowed metadata and various content types<br>- Required a new connection for each request/response |
| **HTTP 1.1**     | 1997             | - Introduced persistent connections (keep-alive)<br>- Added methods: PUT, PATCH, DELETE, CONNECT, TRACE, OPTIONS<br>- Supported compression and byte-range transfers<br>- Required Host header for virtual hosting<br>- **Stopped reliance on all OSI layers by optimizing communication at the application layer** |
| **HTTP 2.0**     | 2015             | - Enabled request multiplexing over a single connection<br>- Introduced request prioritization and server push<br>- Used binary protocol for efficiency<br>- Included automatic header compression<br>- **Stopped the Application, Presentation, and Session layers by integrating their functions into a more efficient binary protocol**<br>- **Supports gRPC for high-performance remote procedure calls**<br>- **Uses stream IDs to manage multiple concurrent streams over a single connection** |
| **HTTP 3.0**     | 2020 (draft)     | - Replaced TCP with QUIC (based on UDP)<br>- Enabled faster connection setup and native multiplexing<br>- Built-in encryption by default<br>- Eliminated distinction between HTTP and HTTPS |

---

| **Layer**              | **Layer Number** | **Function**                                                                 | **Examples**                                         |
|------------------------|------------------|------------------------------------------------------------------------------|------------------------------------------------------|
| **Application**        | 7                | Provides network services directly to user applications                      | HTTP, FTP, SMTP, DNS, Web browsers                   |
| **Presentation**       | 6                | Translates data formats, encryption, and compression                         | SSL/TLS, JPEG, MPEG, GIF, ASCII, EBCDIC              |
| **Session**            | 5                | Manages sessions and controls dialogues between computers                    | NetBIOS, RPC, SQL session, PPTP                      |
| **Transport**          | 4                | Ensures reliable data transfer with error checking and flow control          | TCP, UDP, SCTP                                       |
| **Network**            | 3                | Handles routing, addressing, and packet forwarding                           | IP, ICMP, IPsec, routers                             |
| **Data Link**          | 2                | Provides node-to-node data transfer and error detection                      | Ethernet, PPP, Switches, MAC addresses               |
| **Physical**           | 1                | Transmits raw bit stream over physical medium                                | Cables, Hubs, NICs, Fiber optics, Electrical signals |

## Database connection in Django

| **Concept**                          | **Definition / Behavior**                                                                                                                                                       |
|--------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Synchronous (Sync)**               | - Executes tasks one at a time<br>- Caller waits for the response (blocking)<br>- Simple and predictable<br>- **Latency:** Lower when the database is small; higher due to blocking operations as data size or concurrency increases<br>- **Scalability:** Limited; performance drops with more concurrent tasks |
| **Asynchronous (Async/concurrent)**  | - Executes tasks independently<br>- Caller doesn't wait (non-blocking)<br>- Efficient for I/O-heavy operations<br>- **Latency:** Lower for I/O-bound tasks; multiple operations can proceed<br>- **Scalability:** High; handles many concurrent tasks efficiently |
| **Connection Pooling**               | technique used to manage database connections efficiently by reusing active connections instead of creating new ones each time a connection is requested. This approach significantly reduces the overhead associated with opening and closing connections, thereby enhancing the performance and scalability of applications. |

#### Note in Django:
- When async quieries are used like (get, update, delete, etc.), may corrapt the database connection if not handled properly (e.g. update the record of data base to be zero so if get will get the old version of record).

---

#### Mechanisms to handle database corruption when using async queries:
- **Read and Write Locks**: Use locks to ensure that only one operation can modify the database at a time, preventing concurrent modifications that could lead to corruption.
- **Transactions**: check the version of the data being modified and ensure it matches the expected version before committing changes.
- **Atomic Queries**: Use atomic operations to ensure that a series of database operations are completed successfully or rolled back entirely, maintaining data integrity.
- **Use one process for async queries**: Ensure that all async queries are handled by a single process or thread to avoid conflicts and potential corruption.
