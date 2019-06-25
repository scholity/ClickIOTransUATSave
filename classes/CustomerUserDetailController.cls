public without sharing class CustomerUserDetailController
{
    private final User 	u;
    
    public CustomerUserDetailController()
    {
        u = [SELECT Id
               FROM	User
              WHERE	ContactId =:ApexPages.currentPage().getParameters().get('id')
              LIMIT	1];
    }
    
    public PageReference redirect()
    {   
        if (u != null)
        {
            PageReference redirectSuccess = new PageReference('/lightning/r/User/'+u.Id+'/view');
            return redirectSuccess;
        }
        else
        {
            return null;
        }
    }
}