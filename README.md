# GAE Regional Domain Switch

## Use-case

App Engine need some regional failover?  Use domain-mappings to send traffic to a new App Engine instance.  It works pretty quickly in a pinch!

This trick requires custom domain mappings (ie, you aren't just using the appspot.com domain).  

## Usage

```bash
./switch.sh DOMAIN_NAME OLD_PROJECT NEW_PROJECT
```

For example, say you've got an app at `widgets.io`.  If the western deployment is down and the eastern is up, switch traffic like so: `./switch.sh widgets.io widget-project-west widget-project-east

