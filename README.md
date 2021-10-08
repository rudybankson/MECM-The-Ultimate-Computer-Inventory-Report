I'm working on a project right now where we are doing an available application deployment by device, but we want to be able to nag our users by email if they haven't done it yet. So how do you turn a device into an email address? I decided to make a custom report that shows me a list of all machines in a collection and then gives me some key info, but most importantly it gives me the top console user and their email address. Our user discovery brings in the "mail" attribute for users so this information is already stored in our Config Manager database.

To see the details on how this report was built, go to https://www.get-itguy.com/2021/10/config-manager-reporting-ultimate.html. 

If you just want to download this report and import it to your environment, be sure to change the Datasource to point to your environment. Beyond that, you shouldn't need any changes. Happy reporting!
