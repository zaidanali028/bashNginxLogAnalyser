# 📊 NGINX Log Analysis Script

## 🌟 Overview

Bash script for analyzing NGINX access logs, providing insights into:
- 🌐 IP addresses with most requests
- 🔗 Most requested paths
- 📡 Response status code frequencies
- 🕵️ User agent frequencies

## 🛠️ Prerequisites

- Bash shell
- NGINX access log file
- Basic Linux utilities (`awk`, `sort`, `uniq`)

## 🚀 Functions

### IP Address Analysis
- Identifies top 5 IP addresses by request count

### Path Request Analysis
- Finds most frequently accessed paths
- Shows request volume for each path

### Status Code Tracking
- Monitors response status code distribution

### User Agent Insights
- Tracks most common user agents
- Helps understand client diversity



## 📊 Output Example
```
IP Address with the most requests:
IP: 192.168.1.100, Count: 150

Most Requested Paths:
PATH: /index.html, Req. count: 75

Most Frequent Response Status Codes:
RES STATUS CODE: 200, Count: 200

Most Requested User Agents:
USER AGENT: Chrome, Count: 100
```

## 🔧 Configuration
- Modify `log_file` variable in script
- Adjust `head -n 5` for different result count

## 🛡️ Best Practices
- Ensure log file accessibility
- Verify log file path

---
## Running the Script

### Permissions Setup
```bash
chmod +x log_analyzer.sh
```

### Execution Methods
```bash
# Direct execution
./log_analyzer.sh
```

### Troubleshooting
- Verify script location
- Check permissions: `ls -l log_analyzer.sh`
- Confirm user privileges

---

## Acknowledgments

- Huge thanks to [roadmap.sh](https://roadmap.sh) for inspiring this server performance monitoring journey and empowering developers with clear, actionable system insights! 💡🚀 [Roadmap Project Link](https://roadmap.sh/projects/nginx-log-analyser)

## 📜 License

- This project is licensed under the MIT License - see the [MIT](LICENSE) file for details. 📄

## 🤝 Contributing

Contributions are welcome. Please submit pull requests or open issues on the repository. 🚧



## Support

- For support, please open an issue in the repository or contact the maintainer at zaidanali028@gmail.com.
---