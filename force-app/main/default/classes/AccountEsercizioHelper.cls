public with sharing class AccountEsercizioHelper {
   //sempre public static 
   //si basa sulla cache cacheable=true->solo 1 volta la chiamata,da levare perchè con imperativo non si aggiorna se non al refresh o dopo tot secondi/minuti
    @auraEnabled()
    public static List<Account> getAccounts(String text) {
        String s = '%' + text + '%'; 
        return[
            SELECT  Id,Name,BillingAddress
            FROM  Account
            WHERE Name LIKE : s
        ];
    }

   /* @auraEnabled(cacheable=true)
    public static List<Account> getFields(Id Id){
        Id passaggioId = '%'+ id +'%';
        return[
            SELECT Id,Name,BillingAddress,Site,AnnualRevenue,Fax
            FROM Account
            WHERE Name LIKE : passaggioId
        ];
    }*/

}
