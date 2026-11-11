# Security Incident Investigation Report

**Incident ID:** AFG-2026-001
**Organization:** Apex Financial Group (Fictional)
**Date:** November 11, 2026
**Classification:** Simulated Security Incident
**Status:** Detection Validated

## 1. Executive Summary
A PowerShell-based security detection script identified
five simulated failed authentication attempts associated
with the account j.smith.

The activity originated from the fictional test IP address
192.0.2.10 and triggered a threshold-based security alert.

## 2. Evidence
- Log file: logs/authentication.csv
- Detection script: scripts/Generate-TestLogs.ps1
- Screenshot: screenshots/Day1-Authentication-Detection.png
- Windows Event ID: 4625 (Failed Logon)
- Failed attempts: 5
- Affected account: j.smith

## 3. Detection Logic
The script filters failed authentication events, groups
them by username, and generates an alert when an account
has five or more failed login attempts.

## 4. Security Assessment
Repeated authentication failures may indicate password
guessing, user error, or misconfigured credentials.

The simulated events demonstrate detection capability,
but do not establish that an actual attack occurred.

## 5. Recommended Response
1. Review authentication history for the affected account.
2. Verify the activity with the account owner.
3. Check for successful logins following failed attempts.
4. Review MFA status and account security controls.
5. Escalate confirmed suspicious activity for investigation.

## 6. Conclusion
The PowerShell detection script successfully generated
an alert from simulated authentication data.

This exercise demonstrates foundational security event
analysis, detection engineering, and incident documentation.