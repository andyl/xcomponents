# Xcomponents 

## ROADMAP 

- [ ] Add `PhxLiveStorybook` to Tailwind3 site 
- [ ] Build out Milligram site 
- [ ] Add `PhxLiveStorybook` to Milligram site 
- [ ] Fix Dockerfile 
- [ ] Publish Docker image 
- [ ] Publish to Fly.io 

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

- [ ] Make a hdr-nav component `unav_hdr` 
- [ ] Make a tst-nav component `unav_tst` 
