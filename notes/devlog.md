# Xcomponents 

## ROADMAP 

- [ ] Publish to Fly.io 
- [ ] Build out Milligram site 
- [ ] Add `PhxLiveStorybook` to Tailwind3 site 
- [ ] Add `PhxLiveStorybook` to Milligram site 
- [ ] Fix Dockerfile 
- [ ] Publish Docker image 

# TODO 

- [ ] create a script to auto-generate `XcomponentsWeb.CoreComponents`
- [ ] prevent demo apps from appearing in ExDocs 

# 2022 Nov 27 Sun

- [x] Initial creation (Phoenix 1.7.0_rc.0)

## 2022 Nov 29 Tue

- [x] Build out minimal home page 
- [x] Create demo sites 
- [x] Organize components 
- [x] Get all test pages working 
- [x] Test list components 
- [x] Make a list component 

## 2022 Nov 30 Wed

Note:
- Menu state needs to come top-down 
- Calculate on mount
- Use pattern matching in component bodies instead of conditionals

defmodule Util.Menu do 
  defstruct [:label, :href, :state]
end

- [x] Make a hdr-nav component `unav_hdr` 
- [x] Make a tst-nav component `unav_tst` 
- [x] Clean out unused code 

## 2022 Dec 02 Fri

Notes:
- PhxLiveStorybook doesn't work with Phoenix 1.7 
- Wait for the next release

Setting up Milligram on Phx1.7: 
- mix phx.new <app> && cd <app> 
- rm assets/tailwind.config.js
- edit config/config.exs          # comment tailwind config
- edit dev/dev.exs                # comment tailwind config
- cd assets
- npm install milligram 
- edit js/app.js                  # import "../css/app.css"
- edit css/app.css                # comment tailwind imports
- edit css/app.css                # @import "../node_modules/milligram/dist/milligram.css";

Now edit: 
- components/layouts/app.html.heex 
- components/layouts/root.html.heex
- controllers/page_html/home.html.heex

That's it 

## 2022 Dec 07 Wed

Esbuild and alternative CSS frameworks 
- https://dev.to/oliverandrich/adding-bootstrap-to-a-phoenix-1-6-project-hfe
- https://elixirstatus.com/p/hwAlr-adding-bulma-to-phoenix-16
- https://experimentingwithcode.com/using-bulma-and-sass-in-phoenix/
- https://cloudless.studio/wrapping-your-head-around-assets-in-phoenix-1-6
- https://hexdocs.pm/phoenix/asset_management.page_html
- https://github.com/CargoSense/dart_sass
- https://github.com/phoenixframework/tailwind

