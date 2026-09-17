---
title: "Blog 3"
date: 2024-01-01
weight: 1
chapter: false
pre: " <b> 3.3. </b> "
---
# AI-assisted game production: From static concept to interactive prototype
AWS GameTech has proposed a solution using Generative AI + AWS Cloud to transform 2D concept drawings into 3D prototypes in just a few hours, instead of weeks as before.

How it works:

- 2D to 3D: AI (Tripo3D, Hunyuan3D) automatically builds 3D models from 2D drawings.
- Animation: Auto-Rigging tools automatically identify joints and assign movement animations.
- Code integration: LLM models support pre-written logic code (C++/C#/Blueprint) for collisions, rotations, and controls.
- Cloud infrastructure: AWS EC2 (GPU) handles all heavy processing tasks, combined with Amazon Bedrock for data security.
Benefits:
- Time & cost savings: Shortens the prototyping phase from 2-4 weeks to 1-2 days.
- Fail-Fast Testing: Allows developers to freely test dozens of different gameplay ideas to choose the optimal solution.
- Indie Team Support: Easily create high-quality demos without a huge team.
Note: 3D models created by AI still require human refinement of the mesh structure before official release, and AI only acts as an acceleration assistant; it cannot replace human game design thinking.

📌 Original article source: https://aws.amazon.com/vi/blogs/gametech/ai-assisted-game-production-from-static-concept-to-interactive-prototype/
![Blog 3](/images/5-Workshop/3.6.jpg)