# linux-log-analyzer
Log files are the backbone of Linux system administration. Every service, application, and kernel activity writes logs that help system administrators troubleshoot issues, detect failures, and monitor system health.

## The script:

- Accepts a log file as input

- Extracts errors and warnings

- Counts occurrences

- Saves output to files

# In this project, we build a Log File Analyzer using classic Linux text-processing tools:

- grep

- awk

- sed

- shell scripting & loops

# 🔥 Log File Analyzer (AWK + GREP + SED)

A real-world Linux SysAdmin project that analyzes log files and extracts
errors, warnings, and occurrence counts using classic Unix tools.

---

## 📌 Features
- Extract error messages
- Extract warning messages
- Count error occurrences
- Simple and fast
- Real production-style log analysis

--- 

## 📂 Project Structure

log-file-analyzer/
├── analyze_logs.sh
├── sample.log
├── README.md
├── errors.txt
├── warnings.txt
├── error_count.txt
└── .gitignore

---

## 🛠 Tools Used
- Bash
- grep
- awk
- sed

---

## 🚀 Usage

```bash
chmod +x analyze_logs.sh
./analyze_logs.sh /var/log/syslog

---

## 📊 Output Files

errors.txt → All error messages

warnings.txt → All warning messages

error_count.txt → Frequency of error types
