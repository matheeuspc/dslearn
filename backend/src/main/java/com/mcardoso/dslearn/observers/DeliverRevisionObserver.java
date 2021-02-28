package com.mcardoso.dslearn.observers;

import com.mcardoso.dslearn.entities.Deliver;

public interface DeliverRevisionObserver {

    void onSaveRevision(Deliver deliver);

}
