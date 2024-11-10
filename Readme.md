# Redmine Portfolio Management plugin 
[![GitHub tag](https://img.shields.io/github/tag/marcus-sacramento-redmine/redmine_portfolio_management.svg?style=flat-square)](https://github.com/marcus-sacramento-redmine/redmine_portfolio_management/tags) [![Github Releases (by Release)](https://img.shields.io/github/downloads/marcus-sacramento-redmine/redmine_portfolio_management/v1.0.0/total.svg?style=flat-square)](https://github.com/marcus-sacramento-redmine/redmine_portfolio_management/releases) [![Github All Releases](https://img.shields.io/github/downloads/marcus-sacramento-redmine/redmine_portfolio_management/total.svg?style=flat-square)](https://github.com/marcus-sacramento-redmine/redmine_portfolio_management/releases)



* Grouping of Projects in a simplified Portfolio view
* Simple filtering and sorting
* Pagination for better project visibility
* Definition of Project Start and End Dates based on task dates:

    * Start Date: Earliest date in the 'Start' field of tasks directly associated with the project
    * End Date: Latest date in the 'Due Date' field of tasks directly associated with the project

* Calculation of Project Completion Percentage:

    * Calculated based on the total number of completed tasks over the total tasks in the project

>> ![CF_Portfolio](Portfolio_view.png)

***
### Attention

* Read the installation instructions carefully;
* This is an OpenSource project under license;
* This project was developed as an experience in Ruby, so fixes and/or suggestions may take some time depending on the developer’s availability;
* To learn how to contribute to the project, please read the Contributing Guide and Project Wiki

***

### Informações sobre o ambiente utilizado no desenvolvimento:
```
Environment:
  Redmine version                3.2.0.stable.14972
  Ruby version                   2.2.3-p173 (2015-08-18) [x86_64-linux]
  Rails version                  4.2.5
  Environment                    production
  Database adapter               PostgreSQL
SCM:
  Subversion                     1.7.14
  Git                            1.8.3.1
  Filesystem  
```

***

### Plugin Installation

1.    Clone the project using git: https://github.com/marcus-sacramento-redmine/redmine_portfolio_management.git into the redmine/plugins directory of your Redmine installation.
2.    Run the command bundle install to download the project dependencies.
3.    Run the command rake redmine:plugins:migrate RAILS_ENV=production to apply the plugin migration.
4.   Restart the Apache service: service httpd restart

***


### Plugin Configuration

>> The plugin requires certain custom fields to be configured for Projects in Redmine. The values in these Custom Fields will be displayed on the plugin’s main page.

    Configure a Custom Field for the Project Portfolio. This field should be of the List type and not accept multiple values. The possible values represent the names to assign to Project Portfolios:

    >> ![CF_Portfolio](Portfolio_cf_Portfolio.png)

    Configure a Custom Field for the Project Manager. This field should be of the User type and not accept multiple values. Define the roles allowed as project managers:

    >> ![CF_Portfolio](Portfolio_cf_Responsavel.png)


    In Project Settings, members must be associated with the profile indicated in the custom field 'Project Manager' before setting the plugin values. Update the Redmine page to load the configurations.

    After adding members, simply define the Portfolio and the member who will be responsible for the project. If the Portfolio field is left blank, the project will not be displayed in the plugin:

    >> ![CF_Portfolio](Portfolio_project_configuration.png)



### Plugin Removal

To remove the plugin, delete the plugin directory from ```redmine/plugins``` in the Redmine installation and restart the Apache service:```service httpd restart```


