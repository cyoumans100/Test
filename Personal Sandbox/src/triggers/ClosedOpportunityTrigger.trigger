//To complete this challenge, you need to add a trigger for Opportunity. The trigger will add a task to any opportunity inserted or updated with the stage of 'Closed Won'. The task's subject must be 'Follow Up Test Task'.
//The Apex trigger must be called 'ClosedOpportunityTrigger'
//With 'ClosedOpportunityTrigger' active, if an opportunity is inserted or updated with a stage of 'Closed Won', it will have a task created with the subject 'Follow Up Test Task'.
//To associate the task with the opportunity, fill the 'WhatId' field with the opportunity ID.
//This challenge specifically tests 200 records in one operation.

trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
List<Task> tasks = new List<Task>();
    for(Opportunity o : Trigger.New) {
        if(o.StageName == 'Closed Won'){
            Task t = new Task();
            t.Subject = 'Follow Up Test Task';
            t.WhatId = o.Id;
            Tasks.add(t);
        }
     }
    insert tasks;
}