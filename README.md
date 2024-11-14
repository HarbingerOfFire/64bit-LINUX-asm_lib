# 64-Bit Linux Standard Libraries for Assembly

The objective of this porject is to turn as many of the standard libraries for C into assembly libraries to allow for easy use of assembly language, especially for new learners.

Here are the libraries slated to be converted:
### Core C Standard Libraries
1. **stdlib.h** - Standard library for memory allocation, program control, conversions, and other utilities.
2. **stdio.h** - Standard input/output library, for reading/writing data.
3. **string.h** - String manipulation functions.
4. **math.h** - Mathematical functions.
5. **time.h** - Time and date functions.
6. **ctype.h** - Character handling (classification and conversion).
7. **stdbool.h** - Boolean type support (`true`, `false`).
8. **stddef.h** - Standard definitions for common types (`NULL`, `size_t`).
9. **stdint.h** - Fixed-width integer types (e.g., `int32_t`).
10. **limits.h** - Sizes of integer types.
11. **float.h** - Properties of floating-point types.

### POSIX Standard Libraries (Cross-Platform on UNIX-like and Extended Support on Windows)
12. **unistd.h** - Basic POSIX functionality (file operations, environment).
13. **pthread.h** - POSIX threads library for multithreading.
14. **fcntl.h** - File control operations.
15. **dirent.h** - Directory operations.
16. **sys/types.h** - System data types.
17. **sys/stat.h** - File status (stat structure).
18. **sys/time.h** - Date and time functions with `timeval`.
19. **sys/socket.h** - Socket programming for network communication.
20. **arpa/inet.h** - IP address manipulation.
21. **netinet/in.h** - Internet address structures.
22. **netdb.h** - Network database operations.
23. **errno.h** - Error codes and handling.
24. **signal.h** - Signal handling (e.g., for interrupts).
25. **setjmp.h** - Non-local jumps (useful for exception handling).

### I/O and File Management
26. **aio.h** - Asynchronous input/output.
27. **poll.h** - File descriptor polling for events.
28. **sys/select.h** - Multiplexing I/O over file descriptors.
29. **sys/ioctl.h** - Device-specific I/O control operations.
30. **tar.h** - Handling `.tar` archive files.
31. **syslog.h** - Logging messages to the system logger.

### Memory Management and Manipulation
32. **malloc.h** - Dynamic memory allocation.
33. **memory.h** - Memory manipulation (memmove, memcpy).

### Process and System Management
34. **sys/wait.h** - Waiting for process termination.
35. **spawn.h** - Process creation (spawn functions).
36. **sys/resource.h** - Resource usage for processes.
37. **sched.h** - Scheduling of processes.

### Advanced Mathematical Libraries
38. **complex.h** - Complex number support.
39. **tgmath.h** - Type-generic math functions.
40. **fenv.h** - Floating-point environment handling.

### Cryptography and Randomness
41. **openssl** - OpenSSL library for cryptography, SSL/TLS (cross-platform).
42. **crypt.h** - Encryption and hashing functions.

### Networking and Internet Protocol Libraries
43. **ifaddrs.h** - Interface address structures.
44. **resolv.h** - DNS resolution functions.
45. **rpc/rpc.h** - Remote procedure call.
46. **curl/curl.h** - HTTP, FTP, etc., for internet protocols (via `libcurl`).

### Utility and Data Structure Libraries
47. **search.h** - Search and sort algorithms, including hash tables.
48. **regex.h** - Regular expressions.
49. **sys/queue.h** - Macros for implementing data structures like lists, queues.
50. **argp.h** - Argument parsing (mainly for GNU systems, but widely used).

These libraries are made to be used and compiled by NASM on a x64 Linux machine. All functions follow the same format to excute. For a standard function call, the format equivalent is `RAX(rdi, rsi, rdx, r10, r8, r9) -> RAX` where you move the required value for each part into the required registry and then pass an interrupt. 