public with sharing class QueryAccounts {
    @AuraEnabled
    public static List<Account> queryAllAccounts() {
        return [SELECT Id,Name FROM Account LIMIT 10];
    }
}
