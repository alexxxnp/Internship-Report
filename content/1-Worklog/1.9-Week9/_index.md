---
title: "Week 9 Worklog"
date: 2026-07-27
weight: 9
chapter: false
pre: " <b> 1.9. </b> "
---


### Week 9 Objectives:
* Master Infrastructure as Code (IaC) principles using AWS CloudFormation.
* Automate cloud resource provisioning, updating, and lifecycle management via templates.
* Write reusable templates to deploy full VPC, EC2, and S3 environments automatically.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Study Infrastructure as Code (IaC) advantages <br> - Overview of AWS CloudFormation: Stacks, Templates, Change Sets <br> - Template Structure (YAML/JSON): Resources, Parameters, Outputs, Mappings | 07/27/2026 | 07/27/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html) |
| 3 | - Study Intrinsic Functions: `Fn::Ref`, `Fn::GetAtt`, `Fn::Sub`, `Fn::Join` <br> - Learn about CloudFormation Drift Detection | 07/28/2026 | 07/28/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html) |
| 4 | - **Practice:** <br>&emsp; + Write CloudFormation Template for S3 Bucket & Security Group creation <br>&emsp; + Deploy Stack via AWS Console / AWS CLI | 07/29/2026 | 07/29/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-using-console.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-using-console.html) |
| 5 | - **Advanced Practice:** <br>&emsp; + Write end-to-end Template provisioning Custom VPC, Subnets, Route Tables, and IGW <br>&emsp; + Deploy EC2 Instance inside the VPC dynamically via CloudFormation | 07/30/2026 | 07/30/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/sample-templates-services-us-west-2.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/sample-templates-services-us-west-2.html) |
| 6 | - Practice Stack Updates and observe automatic Rollback mechanisms on failure <br> - Review IaC efficiency gains versus manual configuration | 07/31/2026 | 07/31/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html) |

### Week 9 Achievements:
* Acquired solid Infrastructure as Code (IaC) engineering skills.
* Proficiently structured CloudFormation templates using YAML/JSON syntax.
* Fully automated multi-resource VPC and EC2 deployments through a single CLI command execution.