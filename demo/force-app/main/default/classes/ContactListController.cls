public with sharing class ContactListController {
    public ContactListController() {

    }
    @AuraEnabled(cacheable=true)
    global static List<Contact> getContacts(){
        return [SELECT Id, Name FROM Account];
    }
}
