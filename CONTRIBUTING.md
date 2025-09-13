Contributing to Ubuntu LVM Disk Extension Script
Thank you for your interest in contributing to this project! We welcome contributions from the community.
How to Contribute
Reporting Issues
Before creating an issue, please check if it already exists. When creating a new issue, please include:

Your Ubuntu version (lsb_release -a)
Output of lsblk and df -h
Full error message or unexpected behavior
Steps to reproduce the issue

Suggesting Enhancements
We're always looking to improve the script. Enhancement suggestions should include:

Clear description of the enhancement
Use case or problem it solves
Proposed implementation approach (if you have one)

Pull Requests

Fork the repository
Create a feature branch from main

bash   git checkout -b feature/your-feature-name

Make your changes
Test your changes on a test system (never test on production!)
Commit your changes with clear, descriptive commit messages

bash   git commit -m "Add feature: describe what you added"

Push to your fork

bash   git push origin feature/your-feature-name

Create a Pull Request with:

Clear description of changes
Why the changes are needed
Test results (what you tested on)



Development Guidelines
Code Style

Use 2-space indentation
Add comments for complex operations
Use meaningful variable names
Include error handling for critical operations
Add progress messages for user feedback

Testing
Before submitting:

Test on a non-production system
Verify the script works with different disk configurations
Test both successful and failure scenarios
Ensure backup functionality works correctly

Safety First
This script modifies disk partitions. When contributing:

Always include safety checks
Preserve existing backup functionality
Add warnings for destructive operations
Test rollback procedures

Types of Contributions Welcome

Bug fixes: Fix issues with existing functionality
Feature additions: Add new capabilities (e.g., support for different partition schemes)
Documentation: Improve README, add examples, clarify instructions
Testing: Add test cases, improve error handling
Performance: Optimize script execution
Compatibility: Add support for other Ubuntu versions or distributions

Questions?
If you have questions about contributing, feel free to:

Open an issue with the "question" label
Start a discussion in the repository

Code of Conduct
Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its terms:

Be respectful and inclusive
Focus on what is best for the community
Show empathy towards other community members
Accept constructive criticism gracefully

Recognition
Contributors will be recognized in the project README and release notes.
Thank you for contributing!