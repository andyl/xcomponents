# Xcomponents Organization 

The demo components are organized into three scopes:

xcomponents/*.ex
- shared across all applications 
- prefixed with `x`
- minimal scope: `CoreComponents` and `link`
- in the view: `import Xcomponents.Tailwind3`

xdemo_util/components/*.ex
- shared across all demo applications
- prefixed with `u`
- umbrella-wide scope: `unav_hdr`, `unav_test`
- in the view: `import Util.Tailwind3`

xdemo_base/lib/xdemo_base_web/components/app_components.ex 
- local to this application 
- prefixed with 'a'
- app-specific scope: test components
- in the view: `import XdemoBaseWeb.Components.AppComponents`

