## Restoring the Lifeblood of Maji Ndogo 1

This repository documents Week 1 of my SQL journey analyzing the water accessibility crisis in Maji Ndogo.
This phase was all about stepping into real relational data, facing uncertainty, and learning through hands-on problem-solving—not theory.

📌 Project Overview

The Week 1 goal was simple but challenging: explore and understand an interconnected relational database and begin forming meaningful questions about water access across regions in Maji Ndogo.

Using eight linked tables, I performed exploratory queries, tested assumptions, and built the foundation for deeper analysis in the coming weeks.

🧠 What I Accomplished

Explored 8 interconnected tables (and successfully recovered after breaking them—twice)

Wrote my first meaningful SQL query revealing genuine insights about water access

Used DML operations (INSERT, UPDATE, DELETE) without corrupting the database

Created conditional filters that connected data to real-world decision-making

These tasks transformed abstract SQL concepts into practical, real-world analytical skills.

💡 Key Insight

The biggest lesson wasn’t technical—it was personal:

You don’t get ready by waiting. You get ready by starting before you feel ready.

In just seven days of real problem-solving, I learned more than months of theoretical study could offer.

Week 2 begins with a mix of excitement and fear—which means I’m exactly where I need to be.

🎥 Project Resources

SQL Week 1 Video Summary:
👉 https://lnkd.in/eYpipMHP

📈 Skills Demonstrated

Relational Database Exploration

Joins & Table Relationships

Basic Query Writing

DML Operations (INSERT, UPDATE, DELETE)

Conditional Logic in SQL

Foundational Data Analysis

🤝 Connect or Contribute

If you'd like to discuss SQL, data analysis, or the Maji Ndogo project, feel free to open an issue or connect with me.

## Restoring the Lifeblood of Maji Ndogo 2

This repository documents Week 2 of my ongoing SQL project exploring the water accessibility challenges faced by communities in Maji Ndogo.
What started as simple queries quickly evolved into a deeper investigation, uncovering patterns hidden beneath thousands of messy, real-world records.

📌 Project Overview

The goal of this phase was to move beyond basic SQL operations and dive into advanced analytical techniques. By cleaning, transforming, and dissecting the dataset, I uncovered meaningful insights about water accessibility across different regions in Maji Ndogo.

This week focused on understanding the story behind the data—not just clean results, but the messy transformations that reveal what’s really happening on the ground.

🔍 Key Areas Explored

Window Functions: Used for trend analysis, ranking, and identifying outliers

Data Cleaning & Transformation: Restructuring inconsistent records to reveal hidden insights

Advanced Aggregations: Summaries and statistics across large datasets

Control Flow Functions: Conditional logic to refine results and test assumptions

Clustering Water Sources: Grouping locations by accessibility patterns to understand the scale of the crisis

These techniques helped expose deeper patterns that basic queries simply couldn’t show.

💡 Major Insight

The breakthrough moment came when clustering analysis revealed strong patterns in water source accessibility across communities.
The data stopped being just numbers—it became a narrative about real people and real challenges.

🎥 Resources & Project Materials

SQL Week 2 Project:
👉 https://lnkd.in/eqePBgxJ

Video Summary (SQL Week 2):
🎬 https://lnkd.in/eEuRVJe3

📘 What I Learned

Advanced SQL is more than complex query writing—it's about asking the right analytical questions.

Clean insights come from messy data that has been carefully transformed.

Techniques like ranking, partitioning, clustering, and anomaly detection can unlock insights in any dataset.

Each function mastered this week strengthens my ability to solve real-world problems using data.

📈 Skills Demonstrated

SQL Window Functions

Data Cleaning & Transformation

Control Flow (CASE, IF, etc.)

Aggregation Techniques

Data Clustering Concepts

Exploratory Data Analysis (EDA)

🤝 Let’s Connect

If you found the project interesting or want to discuss SQL/data analysis techniques, feel free to reach out or open an issue.


## Restoring the Lifeblood of Maji Ndogo 3

This repository contains Week 3 of my SQL project analyzing the water accessibility challenges in Maji Ndogo.
This phase moved beyond individual tables and into the world of multi-table relationships, set operations, and narrative-based analysis.
It was the most challenging and eye-opening part of the project so far.

📌 Project Overview

Week 3 focused on stitching together multiple datasets to uncover the story hidden within them.
Rather than analyzing tables in isolation, this phase required understanding how the data connects, interacts, and reveals meaning across relationships.

I worked with a random audit sample, verified findings with basic statistical reasoning, and explored how the structure of a relational database strengthens analytical conclusions.

🔍 Key Focus Areas

Joining Multiple Tables: Creating meaningful outputs by combining related datasets

Understanding ER Models: Interpreting how tables relate and ensuring relationships make sense

Interpreting Random Audit Samples: Comparing sampled results with full-dataset patterns

Applying Statistical Thinking: Using simple stats to validate assumptions and insights

Moving From Queries to Narratives: Making the data “tell the story” rather than returning isolated numbers

🧠 What I Accomplished

By the end of Week 3, I strengthened my ability to:

✔ Confidently join several tables

✔ Understand and work with entity-relationship models

✔ Handle multi-source query complexity

✔ Use set operations to refine results

✔ Support conclusions using basic statistical checks

✔ Think beyond isolated queries and build analytical narratives

I also completed the Week 3 MCQ assessment, which reinforced core concepts like joins, database structures, and set operations.

🎥 Project Resources

SQL Week 3 Project: https://lnkd.in/dhFxewhB

(Insights from the joins and combinations will be shared in the next update.)

📈 Skills Demonstrated

Multi-Table Joins (INNER, LEFT, RIGHT, FULL)

Entity Relationship Modeling

Set Operations (UNION, INTERSECT, EXCEPT)

Statistical Reasoning

Working With Random Samples

Query Optimization Thinking

Data Storytelling Through SQL

⏭️ What’s Next

Next, I’ll be sharing the insights uncovered when all these joins and combinations come together.
The data behaves very differently—and far more interestingly—once you connect the pieces.

More updates loading… 🚀

🤝 Connect or Contribute

If you want to discuss SQL, data modeling, relational structures, or the Maji Ndogo project, feel free to open an issue or reach out.

## Restoring the Lifeblood of Maji Ndogo 4

This final phase of the Maji Ndogo project focuses on translating analytical insights into an actionable, execution-ready plan.

While earlier phases explored water access patterns, queue times, pollution levels, and data integrity, **Part 4 bridges the gap between analysis and real-world impact** by creating a database structure that engineers and decision-makers can actively use.


 🎯 Objective

The goal of Part 4 is to design and populate a project tracking system that:

- Identifies water sources requiring intervention
- Specifies the exact improvement needed at each location
- Provides location details for field engineers
- Tracks implementation status and completion over time

This ensures that insights derived from data directly inform infrastructure upgrades and resource allocation.


🏗️ Project_progress Table Design

A new table, `Project_progress`, is created to support field operations and monitoring.

Key Features:
- **Referential integrity** through foreign key constraints
- **Controlled status updates** using CHECK constraints
- **Support for repeat interventions** via a unique project ID
- **Progress tracking** from backlog to completion

Core Fields:
- `source_id` – Links to the water source being improved
- `Address`, `Town`, `Province` – Location details
- `Source_type` – Type of water source
- `Improvement` – Required intervention
- `Source_status` – Backlog, In progress, or Complete
- `Date_of_completion` – When work is finalized
- `Comments` – Field notes from engineers


🧠 Improvement Logic

Improvements are assigned using rule-based SQL logic:

| Water Source Type | Condition | Improvement |
|------------------|----------|-------------|
| River | All cases | Drill well |
| Well | Chemical contamination | Install RO filter |
| Well | Biological contamination | Install UV and RO filter |
| Shared tap | Queue ≥ 30 minutes | Install additional taps |
| In-home tap | Broken | Diagnose local infrastructure |

Conditional logic is implemented using `CASE` statements, ensuring consistent and scalable decision-making.


 🔄 Data Population Workflow

1. Relevant records are filtered to include only actionable sources
2. Pollution, queue time, and infrastructure data are joined
3. Improvement logic is applied using SQL control flow
4. Results are inserted into the `Project_progress` table

The final dataset contains **25,398 actionable improvement records**, each ready for execution and monitoring.


📌 Outcome

Part 4 delivers a fully operational planning table that:

- Converts insights into execution
- Enables accountability and progress tracking
- Aligns data analysis with infrastructure development

This phase completes the analytical lifecycle — from exploration to implementation.


🛠️ Tools Used
- SQL (CTEs, JOINs, CASE statements, constraints)
- Relational database design
- Data-driven decision modeling

## 🤝 Connect or Contribute

