```mermaid
erDiagram
    CATEGORY_PROJECT{
    category STRING
    
    }
     DOSSIER{
        project_name STRING
        status ENUM
        kick_off DATE
        deadline DATE
        rollup ENUM
        formula string
    }
    milestone{
        milestone_name string
        progress INT
        remain_task string
        progress_task string
        deadline DATE
    }
    milestones_tasks_calendar{
        task_name string
        error_status string
        casillas check
        deadline DATE
    }
    
    

```