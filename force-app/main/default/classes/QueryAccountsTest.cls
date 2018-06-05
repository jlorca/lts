@IsTest
private class QueryAccountsTest {

    @TestSetup
    static void createData() {
        List<Account> accounts = new List<Account> ();
        for(Integer i = 0; i < 5; i++) {
            accounts.add(new Account(Name = 'Test Acc ' + i));
        }

        insert accounts;
    }

    @IsTest
    static void test_queryAccounts() {
        // Given

        // When
        List<Account> accounts = QueryAccounts.queryAllAccounts();

        // Then
        System.assertEquals(true, accounts.size() > 0);
    }
}
